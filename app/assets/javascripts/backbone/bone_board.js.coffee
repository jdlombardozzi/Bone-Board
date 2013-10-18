@BB = do (Backbone) ->
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: (remoteTickets) ->
    new BB.Views.TicketsView remoteTickets
    # new BB.Routers.AppRouter data
    # Backbone.history.start()

@log = (item) ->
  console.log item
