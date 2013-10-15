@BB.Views.TicketsView = do (Backbone) ->
  class TicketsView extends Backbone.View
    el: $ 'body'

    events:
      'click button': 'addTicket'

    initialize: ->
      @collection = new BB.Collections.Tickets
      @counter = 0

      @listenTo @collection, 'add', @appendTicket

      @render()

    render: =>
      @.$el.append '<button>Add Ticket item</button>'
      @.$el.append '<ul></ul>'
      @

    addTicket: =>
      @counter++

      ticket = new BB.Models.Ticket
      ticket.set number: @counter
      ticket.set name: "#{ticket.get 'name'} #{ticket.get 'number'}"

      @collection.add ticket

    appendTicket: (ticket) =>
      ticketView = new BB.Views.TicketView model: ticket
      $('ul').append ticketView.render().el


Backbone.sync = (method, model, success, error) ->
  success()

ticketsView = new BB.Views.TicketsView
