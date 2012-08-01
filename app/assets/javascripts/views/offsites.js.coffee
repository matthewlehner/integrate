class Integrate.Views.Offsites extends Backbone.View
  className: 'events list'

  template: JST['offsites']

  events:
    'tap li': 'open'

  initialize: =>
    if @options.router?.navigate?
      @navigate = @options.router.navigate

    @collection.bind('reset', @render)

  render: =>
    @$el.html @template()

    $events = @$('ul')
    collection = @collection
    collection.each (offsite) ->
      view = new Integrate.Views.OffsiteList
        model: offsite
        collection: collection
      $events.append view.render().el
    this

  open: =>
    id = $(event.srcElement).data('model').id

    event.preventDefault()

    @navigate "events/#{id}", trigger: true

class Integrate.Views.OffsiteList extends Backbone.View
  tagName: 'li'

  initialize: ->
    @id = @model.id

  template: JST['offsitelist']

  render: =>
    renderedContent = @template @model.toJSON()
    @$el.html renderedContent
    @$el.data('model', @model)
    this
