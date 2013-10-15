@BB.Views.TicketsView = do (Backbone) ->

  class TicketsView extends Backbone.View
    el: $ 'body'

    initialize: ->
      @collection = new BB.Collections.Tickets
      @collection.bind 'add', @appendTicket
      @counter = 0
      @render()

    render: =>
      $(@el).append '<button>Add Ticket item</button>'
      $(@el).append '<ul></ul>'
      console.log 'rendered ticket view'

    addTicket: =>
      @counter++

      ticket = new BB.Models.Ticket
      ticket.set number: @counter
      ticket.set name: "#{ticket.get 'name'} #{ticket.get 'number'}"

      @collection.add ticket
      console.log 'added ticket to collection'

    appendTicket: (ticket) =>
      $('ul').append "<li>#{ticket.get 'name'}</li>"
      console.log 'appended ticket to view'

    events: 'click button': 'addTicket'

ticketsView = new BB.Views.TicketsView
