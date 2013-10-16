@BB.Views.TicketsView = do (Backbone) ->
  class TicketsView extends Backbone.View
    el: $ '#wrapper'
    template: 'tickets/tickets'

    events:
      'click .add': 'addTicket'

    initialize: ->
      @render()
      @addAll()

    render: =>
      dust.render @template, {}, (err, out) =>
        @.$el.append out
      @

    addAll: ->
      @collection.forEach(@addTicket, @)

    addTicket: (model) =>
      ticketView = new BB.Views.TicketView model: model
      $('ul').append ticketView.render().el

Backbone.sync = (method, model, success, error) ->
  # success()
