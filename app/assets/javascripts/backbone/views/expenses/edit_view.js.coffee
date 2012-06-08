MoneyManager.Views.Expenses ||= {}

class MoneyManager.Views.Expenses.EditView extends Backbone.View
  template : JST["backbone/templates/expenses/edit"]

  events :
    "submit #edit-expense" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (expense) =>
        @model = expense
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
