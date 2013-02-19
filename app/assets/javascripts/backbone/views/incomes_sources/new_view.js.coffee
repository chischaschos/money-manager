MoneyManager.Views.IncomesSources ||= {}

class MoneyManager.Views.IncomesSources.NewView extends Backbone.View
  template: JST['backbone/templates/incomes_sources/new']

  events:
    '#add-income-source': 'save'

  initialize: ->
    @model = new MoneyManager.Models.IncomesSource
    @model.bind 'change:errors', () =>
      @render()

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset 'errors'

    @model.save {},
      success: (expense) =>
        @remove()
        window.location = '/'

      error: (expense, jqXHR) =>
        @model.set errors: $.parseJSON(jqXHR.responseText)

  render: ->
    @$el.html @template(@model.toJSON())
    @$('form').backboneLink(@model)
    @
