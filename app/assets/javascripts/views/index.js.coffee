class Integrate.Views.Home extends Backbone.View
  template: JST['home']

  events:
    'click li': 'selectMenu'

  initialize: ->
    if @options.router?.navigate?
      @navigate = @options.router.navigate

  render: ->
    $(@el).html @template()
    this

  selectMenu: ->
    path = $(event.srcElement).html().toLowerCase()
    @navigate path, trigger: true
    this
