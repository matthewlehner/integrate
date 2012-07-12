#= require jquery
#= require jquery_ujs
#= require bootstrap-transition
#= require bootstrap-carousel
#= require_tree .

window.Integrate =
  startCarousel: (el) ->
    $el = $(el)
    items = $el.find('.item')
    rand = Math.floor( Math.random() * items.length )
    items.eq(rand).addClass('active')
    $el.carousel()
    $el.carousel('pause')
    return this

  initializeMap: ->
    myOptions =
      zoom: 8,
      center: new google.maps.LatLng(-34.397, 150.644),
      mapTypeId: google.maps.MapTypeId.ROADMAP

    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

    console.log @

  loadMapScript: () ->
    script = document.createElement("script");
    script.type = "text/javascript";
    script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=Integrate.initializeMap";
    document.body.appendChild(script);
