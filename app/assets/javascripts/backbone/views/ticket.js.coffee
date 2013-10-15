class TicketView extends Backbone.View
  el: $ 'body'

  initialize: ->
    _.bindAll @

    @colllection = new Tickets
    @collection.bind 'add', @appendTicket
    @counter = 0
    @render()


  render: ->
    $(@el).append '<button>Add Ticket item</button>'
    $(@el).append '<ul></ul>'

  addTicket: ->
    @counter++

    ticket = new Ticket
    ticket.set number: @counter
    ticket.set name: "#{ticket.get 'name'} #{ticket.get 'number'}"

    @colletion.add ticket

  appendTicket: (ticket) ->
    $('ul').append "<li>#{ticket.get 'name'}</li>"

  events: 'click button': 'addItem'

ticketView = new TicketView
