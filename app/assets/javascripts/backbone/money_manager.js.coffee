#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.MoneyManager =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}

$ ->
  #setup some plugins
  $.datepicker.setDefaults
    dateFormat: "yy-mm-dd"

  $('.datepicker').datepicker()

