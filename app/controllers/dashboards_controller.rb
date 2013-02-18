class DashboardsController < ApplicationController

  def show
    @expenses = Services::ExpenseReport.new :current
    respond_with @expenses
  end
end
