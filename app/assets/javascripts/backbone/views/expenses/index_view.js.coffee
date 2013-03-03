MoneyManager.Views.Expenses ||= {}

class MoneyManager.Views.Expenses.IndexView extends Backbone.View
  template: JST["backbone/templates/expenses/index"]

  initialize: (options) ->
    @expenses = options.expenses
    @income_sources = options.income_sources
    @expenses.bind 'reset', @addAll

  addAll: () =>
    @expenses.each @addOne

  addOne: (expense) =>
    view = new MoneyManager.Views.Expenses.ExpenseView model: expense
    @$('tbody').append view.render().el

  render: =>
    @$el.html @template
      expenses: @options.expenses.toJSON()
      total_expense: @expenses.total()
      total_income: @income_sources.total()
    @addAll()
    @
