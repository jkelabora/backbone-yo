class BackboneYo.Views.Application extends Backbone.View

  tagName: "li"  # overrides the backbone view default element - div

  template: JST['applications/application']

  render: ->
    $(@el).html(@template(app: @model))
    this
