MoneyManager.Views.Expenses ||= {}

class MoneyManager.Views.Expenses.IndexView extends Backbone.View
  template: JST["backbone/templates/expenses/index"]

  initialize: () ->
    @options.expenses.bind('reset', @addAll)

  addAll: () =>
    @options.expenses.each(@addOne)

  addOne: (expense) =>
    view = new MoneyManager.Views.Expenses.ExpenseView({model : expense})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(expenses: @options.expenses.toJSON() ))
    @addAll()

    return this
