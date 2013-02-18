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

    When I click 'Add Money Source'
    Then I should see the Add Money Source form

    Given I fill in the Add Money Source form
    When I click 'Add Money Source'
    Then I should see the dashboard page
    And I should see one Money Source

    And I should see my daily statement
