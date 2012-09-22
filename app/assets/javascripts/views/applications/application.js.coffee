class BackboneYo.Views.Application extends Backbone.View

  template: JST['applications/application']
  tagName: "li"  # overrides the backbone view default element - div

  events: 'click': 'showApp'

  initialize: ->
    # this makes sure that the attribute update on the Random button click is shown
    @model.on('change', @render, this)
    @model.on('highlight', @highlight, this) # the 'this' can be removed if the fn defn uses => instead of ->

  render: ->
    $(@el).html(@template(app: @model))
    this

  highlight: ->
    # firstly remove the highlight from all previous Choices
    $('.choice').removeClass('highlight') # note how this is not scoped only to the 'app' row in the dom

    @$('.choice').addClass('highlight') # note how this is nicely scoped only to the 'app' row in the dom
    # this.$('.choice').addClass('highlight') # an equivalent call


  showApp: ->
    Backbone.history.navigate("applications/#{@model.get('id')}", true) # 'true' makes the app go to that route