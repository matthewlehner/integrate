class Integrate.Views.About extends Backbone.View
  template: JST['about']

  initialize: ->
    if @options.router?.navigate?
      @navigate = @options.router.navigate

  render: ->
    $(@el).html @template()
    this
