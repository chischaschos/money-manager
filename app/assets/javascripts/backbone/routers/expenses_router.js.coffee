class MoneyManager.Routers.ExpensesRouter extends Backbone.Router
  initialize: (options) ->
    @expenses = new MoneyManager.Collections.ExpensesCollection()
    @expenses.reset options.expenses

  routes:
    "new"      : "newExpense"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newExpense: ->
    @view = new MoneyManager.Views.Expenses.NewView(collection: @expenses)
    $("#expenses").html(@view.render().el)

  index: ->
    @view = new MoneyManager.Views.Expenses.IndexView(expenses: @expenses)
    $("#expenses").html(@view.render().el)

  show: (id) ->
    expense = @expenses.get(id)

    @view = new MoneyManager.Views.Expenses.ShowView(model: expense)
    $("#expenses").html(@view.render().el)

  edit: (id) ->
    expense = @expenses.get(id)

    @view = new MoneyManager.Views.Expenses.EditView(model: expense)
    $("#expenses").html(@view.render().el)
