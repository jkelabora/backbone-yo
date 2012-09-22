window.BackboneYo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new BackboneYo.Routers.Applications()

    # this uses the default IE friendly '#' based url routing scheme (anchor portions)
    # Backbone.history.start()

    # as i thought this 'proper' url scheme messes with normal rails routes to see that for the fix..
    Backbone.history.start(pushState: true)
    # this change, with the rails routes update still needs a specific Application template to show
    # (with a link back to the index) to work properly for direct application/[:id] requests..

$(document).ready ->
  BackboneYo.init()
