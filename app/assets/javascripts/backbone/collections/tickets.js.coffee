@BB.Collections.Tickets = do (Backbone) ->

  class Tickets extends Backbone.Collection
    model: BB.Models.Ticket
