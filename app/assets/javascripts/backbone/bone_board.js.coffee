@BB = do (Backbone) ->
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: (data) ->
    console.log 'BB App started.'
    console.log data
    new BB.Routers.Tickets(data)
    Backbone.history.start()
