#= require jquery
#= require jquery_ujs
#= require bootstrap-transition
#= require bootstrap-carousel
#= require_self

class window.Integrate
  @startCarousel: (el) ->
    $el = $(el)
    items = $el.find('.item')
    rand = Math.floor( Math.random() * items.length )
    items.eq(rand).addClass('active')
    $el.carousel()
