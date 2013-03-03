class MoneyManager.Routers.DashboardRouter extends Backbone.Router
  initialize: (options) ->
    @expenses = new MoneyManager.Collections.ExpensesCollection()
    @expenses.reset options.expenses
    @income_sources = new MoneyManager.Collections.IncomesSourcesCollection()
    @income_sources.reset options.income_sources

  routes:
    '': 'indexExpenses'
    'expenses/new': 'newExpense'
    'income_sources/new': 'newIncomeSource'
    #'index'    : 'index'
    #':id/edit' : 'edit'
    #':id'      : 'show'
    #'.*'        : 'index'

  newExpense: ->
    @view = new MoneyManager.Views.Expenses.NewView
    $('#dashboard').html @view.render().el

  indexExpenses: ->
    @view = new MoneyManager.Views.Expenses.IndexView
      expenses: @expenses
      income_sources: @income_sources

    $('#dashboard').html @view.render().el

  newIncomeSource:  ->
    @view = new MoneyManager.Views.IncomesSources.NewView
    $('#dashboard').html @view.render().el

  #show: (id) ->
    #expense = @expenses.get(id)

    #@view = new MoneyManager.Views.Expenses.ShowView(model: expense)
    #$('#expenses').html(@view.render().el)

  #edit: (id) ->
    #expense = @expenses.get(id)

    #@view = new MoneyManager.Views.Expenses.EditView(model: expense)
    #$('#expenses').html(@view.render().el)
