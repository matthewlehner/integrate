class Integrate.Routers.Index extends Backbone.Router
  initialize: ->
    @$container = $('#container')
    @initCollections()

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
    @currentView = new Integrate.Views.Map(router: this)
    @$container.html(@currentView.render().el)

  galleryIndex: ->
    @initGalleries() unless @galleries?

    @currentView = new Integrate.Views.Galleries(router: this, collection: @galleries)
    @$container.html(@currentView.render().el)

  galleryShow: (id) ->
    @initGalleries() unless @galleries?
    @currentView = new Integrate.Views.Gallery(router: this, id: id, collection: @galleries)
    @$container.html(@currentView.render().el)

  initGalleries: ->
    unless @galleries?
      @galleries = new Integrate.Collections.Galleries

    # unless @events?
    #   @events = new Integrate.Collections.Events

    # @locations = new Integrate.Collections.Locations