class Integrate.Collections.Galleries extends Backbone.Collection
  model: Integrate.Models.Gallery

  url: '/galleries'

  initialize: =>
    @bind('reset', @storeLocally)

    if localStorage?['galleries']?
      @reset JSON.parse(localStorage['galleries'])
    else
      @fetch()


  storeLocally: ->
    localStorage['galleries'] = JSON.stringify(@toJSON())
