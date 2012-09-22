class BackboneYo.Models.Application extends Backbone.Model
  
  chosen: ->
    @set(selected: true)
    @save()
    @trigger('highlight') # example of a custom event (not backbone provided).. (events are listened to in views)
    
