class Integrate.Collections.Events extends Backbone.Collection
  model: Integrate.Models.Event

  url: '/offsites'

  initialize: =>
    @bind('reset', @storeLocally)

    if localStorage?['events']?
      @reset JSON.parse(localStorage['events'])
    else
      @fetch()

  storeLocally: ->
    localStorage['events'] = JSON.stringify(@toJSON())
