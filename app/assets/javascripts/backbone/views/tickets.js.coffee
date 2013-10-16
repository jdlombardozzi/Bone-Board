@BB.Views.TicketsView = do (Backbone) ->
  class TicketsView extends Backbone.View
    el: $ 'body'
    template: 'tickets/index'

    events:
      'click .add': 'addTicket'

    initialize: ->
      console.log 'Initialize TicketsView.'

      @render()
      @addAll()

    render: =>
      console.log 'TicketsView render.'
      dust.render @template, {}, (err, out) =>
        @.$el.append out
      @

    addAll: ->
      console.log 'addAll called.'
      @collection.forEach(@addTicket, @)

    addTicket: (model) =>
      console.log 'addTicket called.'
      ticketView = new BB.Views.TicketView model: model
      $('ul').append ticketView.render().el

Backbone.sync = (method, model, success, error) ->
  success()
