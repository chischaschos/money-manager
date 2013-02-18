Then /^I should see the dashboard page$/ do
  current_path.should == root_path
  page.should have_content('Daily statement')
end
