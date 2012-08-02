class Integrate.Views.Sponsors extends Backbone.View
  className: 'sponsors'

  template: JST['sponsors']

  initialize: =>
    if @options.router?.navigate?
      @navigate = @options.router.navigate

    @collection.bind('reset', @render)

  render: ->
    $(@el).html @template()
    $sponsors = this.$('ul')
    collection = @collection
    collection.each (sponsor) ->
      view = new Integrate.Views.SponsorList
        model: sponsor
        collection: collection
      $sponsors.append view.render().el
    this

class Integrate.Views.SponsorList extends Backbone.View
  tagName: 'li'

  initialize: ->
    @id = @model.id

  template: JST['sponsor']

  render: =>
    renderedContent = @template @model.toJSON()
    @$el.html renderedContent
    @$el.data('model', @model)
    this
