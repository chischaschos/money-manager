Then /^I should see the dashboard page$/ do
  current_path.should == root_path
  page.should have_content('Daily statement')
end

Then /^I should see one expense$/ do
  page.should have_content("Monday's beer")
end

Then /^I should see one Incomes Source$/ do
  page.should have_content('Money In: 10000')
end

Then /^I should see the expenses total$/ do
  page.should have_content('Money Out: 200')
end
