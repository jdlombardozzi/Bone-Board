@BB.Models.Ticket = do (Backbone) ->
  class Ticket extends Backbone.Model
    defaults:
      author: 'Me'
      created_on: new Date()