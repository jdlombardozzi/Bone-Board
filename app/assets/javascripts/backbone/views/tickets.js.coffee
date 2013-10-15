@BoneBoard.Views.TicketsView = do (Backbone) ->
	class TicketsView extends Backbone.View
	  el: $ 'body'

	  initialize: ->
	    @collection = new BoneBoard.Collections.Tickets
	    @collection.bind 'add', @appendTicket
	    @counter = 0
	    @render()


	  render: ->
	    $(@el).append '<button>Add Ticket item</button>'
	    $(@el).append '<ul></ul>'

	  addTicket: =>
	    @counter++

	    ticket = new BoneBoard.Models.Ticket
	    ticket.set number: @counter
	    ticket.set name: "#{ticket.get 'name'} #{ticket.get 'number'}"

	    @collection.add ticket

	  appendTicket: (ticket) =>
	    $('ul').append "<li>#{ticket.get 'name'}</li>"

	  events: 'click button': 'addTicket'
ticketsView = new BoneBoard.Views.TicketsView
