class Integrate.Views.Index extends Backbone.View
  template: JST['index']

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
