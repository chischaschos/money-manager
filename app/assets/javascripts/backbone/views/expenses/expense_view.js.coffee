MoneyManager.Views.Expenses ||= {}

class MoneyManager.Views.Expenses.ExpenseView extends Backbone.View
  template: JST['backbone/templates/expenses/expense']

  events:
    'click .destroy' : 'destroy'

  tagName: 'tr'

  destroy: () ->
    @model.destroy()
    @remove()

  render: ->
    @$el.html @template(@model.toJSON())
    @
