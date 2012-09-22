class BackboneYo.Routers.Applications extends Backbone.Router
  routes:
    '': 'index'
    'applications/:id': 'show'

  # this is the main route for the app - in a one-pager you could keep everything in here..
  index: ->
    view = new BackboneYo.Views.ApplicationsIndex()
    $('#container').html(view.render().$el) # cached jquery version of el
#    $('#container').html(view.render().el)

  # linked to the click App row event
  show: (id) ->
    alert "Application #{id}" # trivial example of url param passing..
