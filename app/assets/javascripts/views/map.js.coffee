class Integrate.Views.Map extends Backbone.View
  id: 'map_canvas'

  initialize: ->
    if @options.router?.navigate?
      @navigate = @options.router.navigate

    if window.google?.maps?
      @initializeMap()
      @addMarkers()

    else
      window.mapsLoaded = =>
        @initializeMap()
        @addMarkers()

      @loadMapScript('window.mapsLoaded')

    if @options.galleries?
      @collectionToSites @options.galleries, 'gallery'

    if @options.events?
      @collectionToSites @options.events, 'event'

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

    @mapObject = new google.maps.Map(@el, myOptions);

  addMarkers: ->
    @createMarker site for site in @sites

  createMarker: (site) ->
    latLng = new google.maps.LatLng(site['latitude'], site['longitude'])
    marker = new google.maps.Marker
      position: latLng
      map: @mapObject
      title: site['name']
      icon: @pinImage(site)
      shadow: @pinShadow()

    @createInfoWindow(site, marker)

  pinImage: (site) ->
    if site['type'] is 'gallery'
      pinColor = '555555'
    else if site['type'] is 'event'
      pinColor = '22C2EB'
    new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|#{pinColor}"
        new google.maps.Size(21, 34)
        new google.maps.Point(0,0)
        new google.maps.Point(10, 34))

  pinShadow: ->
    new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_shadow",
      new google.maps.Size(40, 37)
      new google.maps.Point(0, 0)
      new google.maps.Point(12, 35))

  createInfoWindow: (site, marker) ->
    if site['type'] is 'gallery'
      linkHref = "#galleries/#{site['id']}"
    else if site['type'] is 'event'
      linkHref = "#event/#{site['id']}"

    content = "<div>#{site['name']}</div><div>#{site['address']}</div><div><a href=/#{linkHref}>Details</a></div>"

    infowindow = new google.maps.InfoWindow
      content: content

    google.maps.event.addListener marker, 'click', =>
      @infoWindow?.close()
      @infoWindow = infowindow
      infowindow.open @mapObject, marker

  collectionToSites: (collection, type) ->
    @sites ?= []

    for object in collection.toJSON()
      location = _.pick(object, 'id', 'name', 'address', 'latitude', 'longitude')
      _.extend location, type: type
      @sites.push location

  render: ->
    this
