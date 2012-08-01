class Integrate.Views.Offsite extends Backbone.View
  className: 'offsite'

  template: JST['offsite']

  initialize: ->
    if @options.router?.navigate?
      @navigate = @options.router.navigate

    @collection.bind('reset', @render)
  
  render: =>
    @model = @collection.get @id
    return this unless @model
    renderedContent = @template @model.toJSON()
    @$el.html renderedContent
    @$el.data('model', @model)
    this
