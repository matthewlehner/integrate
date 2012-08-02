class Integrate.Views.Sponsors extends Backbone.View
  template: JST['sponsors']

  initialize: ->
    if @options.router?.navigate?
      @navigate = @options.router.navigate

  render: ->
    $(@el).html @template()
    this

