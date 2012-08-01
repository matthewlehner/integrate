class Integrate.Views.Galleries extends Backbone.View
  className: 'galleries'

  template: JST['galleries']

  events:
    'tap li': 'open'

  initialize: =>
    if @options.router?.navigate?
      @navigate = @options.router.navigate

    @collection.bind('reset', @render)

  render: =>
    @$el.html @template()

    $galleries = this.$('ul')
    collection = @collection
    collection.each (gallery) ->
      view = new Integrate.Views.GalleryList
        model: gallery
        collection: collection
      $galleries.append view.render().el
    this

  open: =>
    id = $(event.srcElement).data('model').id

    event.preventDefault()

    @navigate "galleries/#{id}", trigger: true

class Integrate.Views.GalleryList extends Backbone.View
  tagName: 'li'

  initialize: ->
    @id = @model.id

  template: JST['gallerylist']

  render: =>
    renderedContent = @template @model.toJSON()
    @$el.html renderedContent
    @$el.data('model', @model)
    this
