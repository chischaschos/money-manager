class DashboardsController < ApplicationController
  def show
    @expenses = Expense.all
  end
end
