class ExpensesController < ApplicationController
  respond_to :json

  def show
    @expense = Expense.find(params[:id])
    respond_with(@expense)
  end

  def new
    @expense = Expense.new
    respond_with(@expense)
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def create
    @expense = Expense.new(params[:expense])
    @expense.save
    respond_with(@expense)
  end

  def update
    @expense = Expense.find(params[:id])
    @expense.update_attributes(params[:expense])
    respond_with(@expense)
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    respond_with(@expense)
  end
end
