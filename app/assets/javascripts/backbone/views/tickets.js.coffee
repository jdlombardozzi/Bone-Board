@BB.Views.TicketsView = do (Backbone) ->
  class TicketsView extends Backbone.View
    # template: 'tickets/tickets'
    el: '#tickets'

    events:
      'click .add': 'addTicket'

    initialize: (initialTickets) ->
      @collection = new BB.Collections.Tickets initialTickets
      @render()

    render: =>
      @addAll()
      @

    addAll: =>
      @collection.each @addTicket

    addTicket: (ticket) =>
      ticketView = new BB.Views.TicketView model: ticket
      @.$el.append ticketView.render().el

Backbone.sync = (method, model, success, error) ->
  success()
