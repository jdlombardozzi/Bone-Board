@BB.Views.AppView = do (Backbone) ->
  class AppView extends Backbone.View
    el: '#boneboard-app'

    statsTemplate: 'app/stats'

    initialize: ->
      console.log 'boneboard app view'

    render: =>
