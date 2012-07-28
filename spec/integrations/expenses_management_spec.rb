require 'spec_helper'

describe "Expenses management" do

  include_context "authentication"

  it "is added correctly", js: true do
    visit '/expenses'
    click_link 'Add Expense'
    fill_in 'amount', with: 200
    fill_in 'title', with: 'Beer'
    fill_in 'tags', with: 'alcoholism'
    click_button 'Create Expense'
  end

end
