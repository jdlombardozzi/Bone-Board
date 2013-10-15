@BB.Routers.Tickets = do (Backbone) ->

  class Tickets extends Backbone.Router
    routes:
      "": "index"

    index: ->
      console.log 'at index'

