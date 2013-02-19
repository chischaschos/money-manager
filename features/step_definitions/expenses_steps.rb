Then /^I should see the dashboard page$/ do
  current_path.should == root_path
  page.should have_content('Daily statement')
end

Then /^I should see one expense$/ do
  page.should have_content("Monday's beer")
end
