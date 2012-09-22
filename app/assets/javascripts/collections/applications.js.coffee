class BackboneYo.Collections.Applications extends Backbone.Collection

  model: BackboneYo.Models.Application  # used in collections to access extra juice in custom models

  url: '/api/applications' # in this example the collection is the only thing aware of server endpoints

  choose: ->
    app = @shuffle()[0]    # shuffle is an example backbone method provided on collections
    app.chosen()


