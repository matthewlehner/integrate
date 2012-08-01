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
    'events'        : 'offsitesIndex'
    'events/:id'    : 'offsiteShow'

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

  offsitesIndex: ->
    @currentView = new Integrate.Views.Offsites
      router: this
      collection: @offsites
    @$container.html(@currentView.render().el)

  offsiteShow: (id) ->
    @currentView = new Integrate.Views.Offsite
      router: this
      id: id
      collection: @offsites
    @$container.html(@currentView.render().el)
