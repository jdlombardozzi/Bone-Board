@BB.Views.TicketsView = do (Backbone) ->
  class TicketsView extends Backbone.View
    el: $ 'body'

    events:
      'click button': 'addTicket'

    initialize: ->
      console.log 'Initialize TicketsView.'
#      @collection = new BB.Collections.Tickets
#      @counter = 0

#      @listenTo @collection, 'add', @appendTicket

      @render()
      @addAll()

    render: =>
      console.log 'Render TicketsView.'
      @.$el.append '<h1>Redmine Tickets</h1>'
      @.$el.append '<button>Add Ticket item</button>'
      @.$el.append '<ul></ul>'
      @

    addAll: ->
      console.log 'addAll called.'
      @collection.forEach(@addTicket, @)

    addTicket: (model) =>
      console.log 'addTicket called.'
      console.log model
      ticketView = new BB.Views.TicketView model: model
      $('ul').append ticketView.render().el
#      ticket.set number: @counter
#      ticket.set name: "#{ticket.get 'name'} #{ticket.get 'number'}"

#      @collection.add ticket
#
#    appendTicket: (ticket) =>
#      ticketView = new BB.Views.TicketView model: ticket
#      $('ul').append ticketView.render().el


Backbone.sync = (method, model, success, error) ->
  success()
