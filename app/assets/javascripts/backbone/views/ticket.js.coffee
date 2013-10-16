@BB.Views.TicketView = do (Backbone) ->
  class TicketView extends Backbone.View
    tagName: 'li'

    events:
      'click .rename': 'rename'
      'click .remove': 'remove'

    initialize: ->
      @listenTo @model, 'change', @render
      @listenTo @model, 'remove', @remove

    render: =>
      @.$el.html """
                 <span>#{@model.get 'subject'}</span>
                 """
#      <span class="rename">rename</span>
#      <span class="remove">remove</span>
      @

    rename: =>
      @model.set
        name: 'Yours'

    remove: =>
      @model.destroy()
      @.$el.remove()
