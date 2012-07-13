class window.Integrate.Map
  @loadMapScript: (callback) ->
    script = document.createElement("script");
    script.type = "text/javascript";
    script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=#{callback}";
    document.body.appendChild(script);

  constructor: (sites) ->
    @initializeMap()
    @addMarkers(sites)

  initializeMap: ->
    myOptions =
      zoom: 14
      center: new google.maps.LatLng(48.43516805377862, -123.34845250000001)
      mapTypeId: google.maps.MapTypeId.ROADMAP

    @map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

  addMarkers: (sites) ->
    @createMarker site for site in sites

  createMarker: (site) ->
    latLng = new google.maps.LatLng(site['latitude'], site['longitude'])
    marker = new google.maps.Marker
      position: latLng
      map: @map
      title: site['name']

    @createInfoWindow(site, marker)

  createInfoWindow: (site, marker) ->
    infowindow = new google.maps.InfoWindow
      content: site['name']

    google.maps.event.addListener marker, 'click', =>
      @infoWindow?.close()
      @infoWindow = infowindow
      infowindow.open @map, marker
