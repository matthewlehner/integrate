class Integrate.Routers.Index extends Backbone.Router
  routes:
    ''              : 'index'
    'about'         : 'about'
    'map'           : 'map'
    'galleries'     : 'galleryIndex'
    'galleries/:id' : 'galleryShow'

  index: ->
    @currentView = new Integrate.Views.Index(router: this)
    $('#container').html(@currentView.render().el)

  about: ->
    @currentView = new Integrate.Views.Index(router: this)
    $('#container').html(@currentView.render().el)

  map: ->
    console.log 'map route action'

  galleryIndex: ->
    console.log 'galleryIndex route action'

  galleryShow: ->
    console.log 'galleryShow action'
