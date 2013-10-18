@BB.Routers.AppRouter = do (Backbone) ->
  class AppRouter extends Backbone.Router
    routes:
      "": "index"

    index: ->
      ticketsView = new BB.Views.TicketsView collection: @tickets

    initialize: (options = {}) ->
      if _.isObject options
        @tickets = new BB.Collections.Tickets options.tickets
      else
        # We could load from db here, since we didn't have seed data?
