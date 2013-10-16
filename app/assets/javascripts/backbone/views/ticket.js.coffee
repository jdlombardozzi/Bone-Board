@BB.Views.TicketView = do (Backbone) ->
  class TicketView extends Backbone.View
    tagName: 'li'
    template: 'tickets/ticket'

    events:
      'click .rename': 'rename'
      'click .remove': 'remove'

    initialize: ->
      @listenTo @model, 'change', @render
      @listenTo @model, 'remove', @remove

    render: =>
      dust.render @template, @model.toJSON(), (err, out) =>
              @.$el.html out
      @

    rename: =>
      @model.set
        subject: 'New ticket title'

    remove: =>
      @model.destroy()
      @.$el.remove()
