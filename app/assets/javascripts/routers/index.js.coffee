class Integrate.Routers.Index extends Backbone.Router
  initialize: ->
    @$container = $('#container')
    @initCollections() unless @collectionsCreated?

  initCollections: ->
    unless @galleries?
      @galleries = new Integrate.Collections.Galleries

    unless @offsite?
      @offsites = new Integrate.Collections.Offsites

    @collectionsCreated = true
    this

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
    @currentView = new Integrate.Views.Map(
      router: this
      galleries: @galleries
      offsites:  @offsites
    )
    @$container.html(@currentView.render().el)
    google.maps.event.trigger @currentView.mapObject, 'resize'

  galleryIndex: ->
    @currentView = new Integrate.Views.Galleries
      router: this
      collection: @galleries

    @$container.html(@currentView.render().el)

  galleryShow: (id) ->
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
