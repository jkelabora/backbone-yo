window.BackboneYo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new BackboneYo.Routers.Applications()
    Backbone.history.start()

$(document).ready ->
  BackboneYo.init()
