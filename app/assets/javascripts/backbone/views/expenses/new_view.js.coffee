MoneyManager.Views.Expenses ||= {}

class MoneyManager.Views.Expenses.NewView extends Backbone.View
  template: JST['backbone/templates/expenses/new']

  events:
    'click input[type=submit]': 'save'

  initialize: ->
    @model = new MoneyManager.Models.Expense

    @model.bind 'change:errors', () =>
      @render()

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset 'errors'

    @model.save {},
      success: (expense) =>
        window.location = '/'

      error: (expense, jqXHR) =>
        @model.set errors: $.parseJSON(jqXHR.responseText)

  render: ->
    @$el.html @template(@model.toJSON())
    @$('form').backboneLink(@model)
    @
