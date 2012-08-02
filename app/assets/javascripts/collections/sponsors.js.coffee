class Integrate.Collections.Sponsors extends Backbone.Collection
  model: Integrate.Models.Sponsor

  url: '/sponsors'

  initialize: =>
    @bind('reset', @storeLocally)

    if localStorage?['sponsors']?
      @reset JSON.parse(localStorage['sponsors'])
    else
      @fetch()

  storeLocally: ->
    localStorage['sponsors'] = JSON.stringify(@toJSON())
