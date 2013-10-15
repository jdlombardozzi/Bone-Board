@BB = do (Backbone) ->
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: (data) ->
    console.log 'init'
    new BB.Routers.Tickets()
    Backbone.history.start()
