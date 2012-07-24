class Integrate.Collections.Galleries extends Backbone.View
  template: JST['galleries/index']

  render: ->
    $(@el).html(@template)
    this
