@javascript
Feature: Add expenses
  In order to manage my expenses
  As an authenticated user
  I add a money source
  And I add an expense
  So that I can see my daily statement

  Scenario: Successfully add one expense
    Given I go to the home page
    And I click 'Sign up'
    When I fill in the Sign Up form
    And I click 'Sign up'
    Then I should see the dashboard page

    Given I click 'Add Expense'
    And I fill in the Add Expense form
    And I click 'Create Expense'
    Then I should see the dashboard page
    And I should see one expense
    And I should see the expenses total

    Given I click 'Add Incomes Source'
    And I fill in the Add Incomes Source form
    And I click button 'Add Incomes Source'
    Then I should see the dashboard page
    And I should see one Incomes Source
