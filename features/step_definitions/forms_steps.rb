When /^I fill in the Sign Up form$/ do
  fill_in 'user_email', with: 'test@test.com'
  fill_in 'user_password', with: '123test123'
  fill_in 'user_password_confirmation', with: '123test123'
end

Given /^I fill in the Add Expense form$/ do
  fill_in 'title', with: 'Monday\'s beer'
  fill_in 'description', with: 'The beer I drink on mondays'
  fill_in 'date', with: '2013-01-01'
  fill_in 'amount', with: '200'
  fill_in 'tags', with: 'beer'
end
