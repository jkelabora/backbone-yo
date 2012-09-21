class BackboneYo.Routers.Applications extends Backbone.Router
  routes:
    '': 'index'
    'applications/:id': 'show'

  index: ->
    view = new BackboneYo.Views.ApplicationsIndex()
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Application #{id}"
