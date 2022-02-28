@logout
Feature: Logout (As a user I should be able to log out)

  @PERF-807
  Scenario: User can log out by using Logout button inside profile menu and ends up in login page.
    Given the user is on the login page
    And the user enters the "truck driver" information
    When the user logs out using "Logout" button inside profile menu
    Then the user should land on the "Login" page

  @PERF-808
  Scenario: User can not go to the home page again by clicking the step back button after successfully logged out
    Given the user is on the login page
    And the user enters the "sales manager" information
    When the user logs out using "Logout" button inside profile menu
    And the user navigates back
    Then the user should land on the "Login" page

  @PERF-809
  Scenario: User is logged out if the user close the tabs
    Given the user is on the login page
    And the user enters the "store manager" information
    And the user should land on the "Dashboard" page
    When the user closes the tab
    And the user navigates to the login page
    Then the user lands on the "Login" page

  @PERF-810
  Scenario: User is logged out if the user is away from keyboard for 3 minutes
    Given the user is on the login page
    And the user enters the "store manager" information
    When the user is away from keyboard for 3 minutes
    And the user refreshes the page
    Then the user lands on the "Login" page


