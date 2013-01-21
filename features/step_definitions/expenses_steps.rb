Then /^I should see the dashboard page$/ do
  current_path.should == root_path
  page.should have_content('Listing expenses')
end

Then /^It shouldn't show any expense$/ do
  #page.should have_content('Expense total to day: $0')
end

Then /^I should see one expense$/ do
  save_and_open_page
end
