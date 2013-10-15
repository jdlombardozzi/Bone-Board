@BB.Views.TicketView = do (Backbone) ->

  class TicketView extends Backbone.View
    tagName: 'li'

    intitialize: ->

    render: =>
      $(@el).html("<span>#{@model.get 'name'}</span>")
      @
