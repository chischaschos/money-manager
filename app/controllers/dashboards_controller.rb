class DashboardsController < ApplicationController
  def show
    @expenses = Expense.all
    @income_sources = IncomeSource.all
  end
end
