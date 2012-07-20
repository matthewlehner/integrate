class window.Integrate.Map
  @loadMapScript: (callback) ->
    script = document.createElement("script");
    script.type = "text/javascript";
    script.src = "http://maps.googleapis.com/maps/api/js?key=AIzaSyB9IdLhQglAYjiq0njxlKZSYGGtZu7QVpU&sensor=false&callback=#{callback}";
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
    @markers = {}
    @createMarker site for site in sites
    $('[data-location_id]').on 'click', ->
      marker = $(this).data('marker')
      google.maps.event.trigger marker, 'click' 

  createMarker: (site) ->
    latLng = new google.maps.LatLng(site['latitude'], site['longitude'])
    marker = new google.maps.Marker
      position: latLng
      map: @map
      title: site['name']
      animation: google.maps.Animation.DROP

    @markers[site['id']] = marker
    @createInfoWindow(site, marker)
    @linkToEl(site['id'])

  createInfoWindow: (site, marker) ->
    if site['addressable_type'] is 'Gallery'
      linkHref = "galleries/#{site['addressable_id']}"
    else if site['addressable_type'] is 'Offsite'
      linkHref = "offsites#offsite-#{site['addressable_id']}"

    content = "<div>#{site['name']}</div><div>#{site['address']}</div><div><a href=/#{linkHref}>Details</a></div>"

    infowindow = new google.maps.InfoWindow
      content: content

    google.maps.event.addListener marker, 'click', =>
      @infoWindow?.close()
      @infoWindow = infowindow
      infowindow.open @map, marker

  linkToEl: (id) ->
    $("[data-location_id=#{id}]").data('marker', @markers[id])
