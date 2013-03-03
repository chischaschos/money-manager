When /^I click '([^']+)'$/ do |label|
  click_link_or_button label
end

# TODO: So click link or button does not work for all cases no idea why, in
# particular add_expenses.feature:24 did nothing
When /^I click button '([^']+)'$/ do |label|
  click_button label
end
