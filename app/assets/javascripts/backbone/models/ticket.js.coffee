@BoneBoard.Models.Ticket = do (Backbone) ->

  class Ticket extends Backbone.Model
    defaults:
      name: 'Mine'
      number: undefined
