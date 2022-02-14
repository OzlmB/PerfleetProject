Feature: Login as different users


  Scenario: login as a driver user
    Given the user is on the login page
    When the user logs in using "User10" and "UserUser123"
    Then the user should be able to login
    And the title contains "Dashboard"

            #homework
  @hw
  Scenario: login as a driver
    Given the user logged in as "driver"
    Then the user should be able to login
    And the title contains "Dashboard"
    #driver,storemanager,salesmanager
    #you will have one step definition and it will handle differnet usertypes

  @hw
  Scenario: login as a sales manager
    Given the user logged in as "a sales manager"
    Then the user should be able to login
    And the title contains "Dashboard"

  @hw
  Scenario: login as a store manager
    Given the user logged in as "a store manager"
    Then the user should be able to login
    And the title contains "Dashboard"