@BoneBoard.Collections.Tickets = do (Backbone) ->

  class Tickets extends Backbone.Collection
    model: BoneBoard.Models.Ticket
