$ ->
  #setup some plugins
  $.datepicker.setDefaults
    dateFormat: "yy-mm-dd"

  $('.datepicker').datepicker()

  #setup backbone
  new MoneyManager.Routers.ExpensesRouter []
  Backbone.history.start()
