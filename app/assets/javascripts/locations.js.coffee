# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

class window.Integrate.Map
  constructor: ->
    @initializeMap()


  initializeMap: ->
    myOptions =
      zoom: 8,
      center: new google.maps.LatLng(-34.397, 150.644),
      mapTypeId: google.maps.MapTypeId.ROADMAP

    @map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

  @loadMapScript: (callback) ->
    script = document.createElement("script");
    script.type = "text/javascript";
    script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=#{callback}";
    document.body.appendChild(script);
