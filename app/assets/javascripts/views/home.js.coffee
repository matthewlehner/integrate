class Integrate.Views.Home extends Backbone.View
  template: JST['home']

  id: 'home'

  events:
    'tap li': 'selectMenu'

  initialize: ->
    if @options.router?.navigate?
      @navigate = @options.router.navigate

  render: ->
    @$el.html @template()
    this

  selectMenu: ->
    event.preventDefault()
    $target = $(event.srcElement)

    if $target.is('i') or $target.is('span')
      path = $target.parent().data('link')
    else
      path = $target.data('link')

    @navigate path, trigger: true

    this
