MoneyManager.Views.Expenses ||= {}

class MoneyManager.Views.Expenses.ShowView extends Backbone.View
  template: JST["backbone/templates/expenses/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
