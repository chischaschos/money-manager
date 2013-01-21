class MoneyManager.Models.Expense extends Backbone.Model
  paramRoot: 'expense'

  defaults:
    title: null
    description: null
    date: null
    amount: null
    tags: null

class MoneyManager.Collections.ExpensesCollection extends Backbone.Collection
  model: MoneyManager.Models.Expense
  url: '/expenses'
