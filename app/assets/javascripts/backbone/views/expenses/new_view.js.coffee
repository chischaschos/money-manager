MoneyManager.Views.Expenses ||= {}

class MoneyManager.Views.Expenses.NewView extends Backbone.View
  template: JST["backbone/templates/expenses/new"]

  events:
    "submit #new-expense": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      @render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (expense) =>
        @model = expense
        window.location.hash = "/#{@model.id}"

      error: (expense, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    @$("form").backboneLink(@model)

    return this
