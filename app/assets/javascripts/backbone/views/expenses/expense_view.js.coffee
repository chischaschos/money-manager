MoneyManager.Views.Expenses ||= {}

class MoneyManager.Views.Expenses.ExpenseView extends Backbone.View
  template: JST["backbone/templates/expenses/expense"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
