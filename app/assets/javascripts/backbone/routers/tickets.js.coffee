@BB.Routers.Tickets = do (Backbone) ->

  class Tickets extends Backbone.Router
    routes:
      "": "index"

    index: ->
      console.log 'Routed to Tickets#index.'
      ticketsView = new BB.Views.TicketsView collection: @tickets

    initialize: (options = {}) ->
      console.log 'Tickets router started.'

      if _.isObject(options)
        @tickets = new BB.Collections.Tickets(options.tickets)
      else
        # We could load from db here, since we didn't have seed data?