class Integrate.Routers.Index extends Backbone.Router
  initialize: ->
    @$container = $('#container')
    @initCollections() unless @collectionsCreated?

  initCollections: ->
    unless @galleries?
      @galleries = new Integrate.Collections.Galleries
      @galleries.fetch()

    unless @offsite?
      @offsites = new Integrate.Collections.Offsites
      @offsites.fetch()

    unless @sponsors?
      @sponsors = new Integrate.Collections.Sponsors
      @sponsors.fetch()

    @collectionsCreated = true
    this

  routes:
    ''              : 'index'
    'about'         : 'about'
    'sponsors'      : 'sponsorsIndex'
    'map'           : 'map'
    'galleries'     : 'galleryIndex'
    'galleries/:id' : 'galleryShow'
    'events'        : 'offsitesIndex'
    'events/:id'    : 'offsiteShow'

  index: ->
    @currentView = new Integrate.Views.Home(router: this)
    @$container.html @currentView.render().el
    window.scrollTo(0,1)

  about: ->
    @currentView = new Integrate.Views.About(router: this)
    @$container.html @currentView.render().el
    window.scrollTo(0,1)

  sponsorsIndex: ->
    @currentView = new Integrate.Views.Sponsors
      router: this
      collection: @sponsors
    @$container.html @currentView.render().el
    window.scrollTo(0,1)

  map: ->
    @currentView = new Integrate.Views.Map(
      router: this
      galleries: @galleries
      offsites:  @offsites
    )
    @$container.html(@currentView.render().el)
    window.scrollTo(0,1)
    if google?
      google.maps.event.trigger @mapObject, 'resize'

  galleryIndex: ->
    @currentView = new Integrate.Views.Galleries
      router: this
      collection: @galleries

    @$container.html(@currentView.render().el)
    window.scrollTo(0,1)

  galleryShow: (id) ->
    @currentView = new Integrate.Views.Gallery
      router: this
      id: id
      collection: @galleries

    @$container.html(@currentView.render().el)
    window.scrollTo(0,1)

  offsitesIndex: ->
    @currentView = new Integrate.Views.Offsites
      router: this
      collection: @offsites
    @$container.html(@currentView.render().el)
    window.scrollTo(0,1)

  offsiteShow: (id) ->
    @currentView = new Integrate.Views.Offsite
      router: this
      id: id
      collection: @offsites
    @$container.html(@currentView.render().el)
    window.scrollTo(0,1)
