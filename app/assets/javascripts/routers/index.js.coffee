class Integrate.Routers.Index extends Backbone.Router
  initialize: ->
    @$container = $('#container')
    @initCollections() unless @collectionsCreated?

  routes:
    ''              : 'index'
    'about'         : 'about'
    'map'           : 'map'
    'galleries'     : 'galleryIndex'
    'galleries/:id' : 'galleryShow'

  index: ->
    @currentView = new Integrate.Views.Home(router: this)
    @$container.html(@currentView.render().el)

  about: ->
    @currentView = new Integrate.Views.About(router: this)
    @$container.html(@currentView.render().el)

  map: ->
    @initCollections() unless @collectionsCreated?
    @currentView = new Integrate.Views.Map(
      router: this
      galleries: @galleries
      events:    @events
    )
    @$container.html(@currentView.render().el)
    google.maps.event.trigger @currentView.mapObject, 'resize'

  galleryIndex: ->
    @initCollections() unless @collectionsCreated?

    @currentView = new Integrate.Views.Galleries
      router: this
      collection: @galleries

    @$container.html(@currentView.render().el)

  galleryShow: (id) ->
    @initCollections() unless @collectionsCreated?
    @currentView = new Integrate.Views.Gallery
      router: this
      id: id
      collection: @galleries

    @$container.html(@currentView.render().el)

  initCollections: ->
    unless @galleries?
      @galleries = new Integrate.Collections.Galleries

    unless @events?
      @events = new Integrate.Collections.Events

    @collectionsCreated = true

    this
