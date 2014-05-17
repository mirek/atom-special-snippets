SpecialSnippetsView = require './special-snippets-view'

module.exports =
  specialSnippetsView: null

  activate: (state) ->
    @specialSnippetsView = new SpecialSnippetsView(state.specialSnippetsViewState)

  deactivate: ->
    @specialSnippetsView.destroy()

  serialize: ->
    specialSnippetsViewState: @specialSnippetsView.serialize()
