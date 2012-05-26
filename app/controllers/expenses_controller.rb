class ExpensesController < ApplicationController
  # GET /expenses
  # GET /expenses.xml
  def index
    @expenses = Services::ExpenseReport.new :current
    respond_with(@expenses)
  end

  # GET /expenses/1
  # GET /expenses/1.xml
  def show
    @expense = Expense.find(params[:id])
    respond_with(@expense)
  end

  # GET /expenses/new
  # GET /expenses/new.xml
  def new
    @expense = Expense.new
    respond_with(@expense)
  end

  # GET /expenses/1/edit
  def edit
    @expense = Expense.find(params[:id])
  end

  # POST /expenses
  # POST /expenses.xml
  def create
    @expense = Expense.new(params[:expense])
    @expense.save
    respond_with(@expense)
  end

  # PUT /expenses/1
  # PUT /expenses/1.xml
  def update
    @expense = Expense.find(params[:id])
    @expense.update_attributes(params[:expense])
    respond_with(@expense)
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.xml
  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    respond_with(@expense)
  end
end
