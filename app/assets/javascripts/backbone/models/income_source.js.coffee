class MoneyManager.Models.IncomesSource extends Backbone.Model
  url: '/income_sources'

  paramRoot: 'income_source'

  defaults:
    name: null
    amount: null

class MoneyManager.Collections.IncomesSourcesCollection extends Backbone.Collection
  model: MoneyManager.Models.IncomesSource
  url: '/incomes_sources'

  total: ->
    adder = (memo, income_source) -> memo += income_source.get('amount')
    @reduce adder, 0
