@javascript
Feature: Add expenses
  In order to manage my expenses
  As an authenticated user
  I should be able to add an expense

  Scenario: Successfully add one expense
    Given I go to the home page
    And I click 'Sign up'
    When I fill in the Sign Up form
    And I click 'Sign up'
    Then I should see the dashboard page
    And It shouldn't show any expense

    When I click 'Add Expense'
    Then I should see the Add Expense form

    Given I fill in the Add Expense form
    When I click 'Create Expense'
    Then I should see one expense
