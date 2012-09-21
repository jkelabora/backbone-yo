class BackboneYo.Views.ApplicationsIndex extends Backbone.View

  template: JST['applications/index']

  initialize: ->
    @collection = new BackboneYo.Collections.Applications()

    @collection.on('reset', @render, this)
#    @collection.on 'reset', =>
#      @render()

    @collection.fetch()

  render: ->
    $(@el).html(@template(applications: @collection))
    this






#    this.collection = new BackboneYo.Collections.Applications();
#    this.collection.on('reset', function () {
#      this.render();
#    }, this);
#    this.collection.fetch();