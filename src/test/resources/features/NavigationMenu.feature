@navigate
Feature: Navigation Menu

  Scenario: Navigation Fleet -- Vehicles
    Given the user is on login page
    And the user enters the sales manager information
    When the user navigates to Fleet, Vehicles
    Then the title is Vehicles

    @db
  Scenario: Navigation Marketing -- Campaigns
    Given the user is on login page
    And the user enters the sales manager information
    When the user navigates to Marketing, Campaigns
    Then the title is Campaigns

  Scenario: Navigation Activities -- Calendar Events
    Given the user is on login page
    And the user enters the sales manager information
    When the user navigates to Activities, Calendar Events
    Then the title is Calendars


