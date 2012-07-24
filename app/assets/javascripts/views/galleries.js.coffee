class Integrate.Views.Galleries extends Backbone.View
  className: 'galleries'

  template: JST['galleries']

  initialize: ->
    if @options.router?.navigate?
      @navigate = @options.router.navigate

  render: ->
    $(@el).html @template()
    $galleries = this.$('ul')
    collection = @collection
    collection.each (gallery) ->
      view = new Integrate.Views.GalleryList
        model: gallery
        collection: collection
      $galleries.append view.render().el
    this

class Integrate.Views.GalleryList extends Backbone.View
  tagName: 'li'

  template: JST['galleryList']

  render: ->
    renderedContent = @template @model.toJSON()
    $(@el).html renderedContent
    this
