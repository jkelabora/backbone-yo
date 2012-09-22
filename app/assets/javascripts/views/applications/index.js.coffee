class BackboneYo.Views.ApplicationsIndex extends Backbone.View

  events: 'submit #new_application': 'createApp'

  template: JST['applications/index']

  initialize: ->
    @collection = new BackboneYo.Collections.Applications()
    # @collection.on('add', @render, this) #this was re-rendering the whole template on add..
    @collection.on('add', @appendApp, this) #awkwardly, this maps to the event fired by the create call in createApp..
    @collection.on('reset', @render, this)
#    @collection.on 'reset', =>
#      @render()
    @collection.fetch()

  render: ->
    $(@el).html(@template())
    @collection.each(@appendApp)
    this

#    this.collection = new BackboneYo.Collections.Applications();
#    this.collection.on('reset', function () {
#      this.render();                                   this approach re-assigns the 'this' var to the
#    }, this);                                          correct outer context instead of inside the nested fn
#    this.collection.fetch();

  # tasked with the single action of adding to the collection
  createApp: (event) ->
    event.preventDefault() # standard jquery event propagation prevention..
    attrs = name: $('#new_application_name').val()
    @collection.create attrs,   # this call persists server-side
      wait: true                # this will prevent the addition of a blank entry to the client-side collection
      success: -> $('#new_application')[0].reset()
      error: @handleError
#    @collection.fetch() # this is misplaced here... use event callbacks to refresh

  appendApp: (app) ->
    view = new BackboneYo.Views.Application(model: app)
    $('#applications').append(view.render().el)

  handleError: (app, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages

