class Integrate.Routers.Index extends Backbone.Router
  routes:
    ''              : 'home'
    'about'         : 'about'
    'map'           : 'map'
    'galleries'     : 'galleryIndex'
    'galleries/:id' : 'galleryShow'

  index: ->
    @currentView = new Integrate.Views.Home(router: this)
    $('#container').html(@currentView.render().el)

  about: ->
    @currentView = new Integrate.Views.About(router: this)
    $('#container').html(@currentView.render().el)

  map: ->
    console.log 'map route action'

  galleryIndex: ->
    unless @galleries? 
      @galleries = new Integrate.Collections.Galleries
      @galleries.fetch()

    @currentView = new Integrate.Views.Galleries(router: this, collection: @galleries)

  galleryShow: ->
    console.log 'galleryShow action'
