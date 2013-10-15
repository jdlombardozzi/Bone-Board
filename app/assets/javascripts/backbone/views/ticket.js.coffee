@BB.Views.TicketView = do (Backbone) ->

  class TicketView extends Backbone.View
    tagName: 'li'

    events:
      'click .rename': 'rename'
      'click .delete': 'delete'

    intitialize: ->
      @listenTo @model, 'change', @render
      @listenTo @model, 'delete', @deleteTicket

    render: =>
      @.$el.html """
        <span>#{@model.get 'name'}</span>
        <span class="rename">rename</span>
        <span class="delete">delete</span>
      """
      @

    rename: =>
      @model.set
        name: 'Yours'
      @render()

    delete: =>
      @model.destroy()
      @.$el.remove()
