class Integrate.Views.Map extends Backbone.View
  id: 'map_canvas'

  initialize: ->
    if @options.router?.navigate?
      @navigate = @options.router.navigate

    unless window.google?.maps?
      window.mapsLoaded = =>
        @initializeMap()
        @addMarkers()
      #   console.log 'hi'

      @loadMapScript('window.mapsLoaded')

  loadMapScript: (callback) ->
    script = document.createElement("script");
    script.type = "text/javascript";
    script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=#{callback}";
    document.body.appendChild(script);

  initializeMap: ->
    myOptions =
      zoom: 14
      center: new google.maps.LatLng(48.43516805377862, -123.34845250000001)
      mapTypeId: google.maps.MapTypeId.ROADMAP

    @map = new google.maps.Map(@el, myOptions);

  addMarkers: ->
    @markers = {}
    debugger
    # @createMarker site for site in sites
    # $('[data-location_id]').on 'click', ->
    #   marker = $(this).data('marker')
    #   google.maps.event.trigger marker, 'click' 
    #

  render: ->
    this
