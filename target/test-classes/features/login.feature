@login
Feature: Login (As a user, I should be able to login.)

  @PERF-780
  Scenario: Driver logs in with valid credentialsGiven the user is on the login page
    Given the user is on the login page
    When the user enters the "truck driver" information
    Then the user should land on the "Quick Launchpad" page

  @PERF-783
  Scenario: Store manager logs in with valid credentials
    Given the user is on the login page
    When the user enters the "store manager" information
    Then the user should land on the "Dashboard" page

  @PERF-784
  Scenario: Sales manager logs in with valid credentials
    Given the user is on the login page
    When the user enters the "sales manager" information
    Then the user should land on the "Dashboard" page

  @PERF-785
  Scenario: User cannot access the application without providing credentials
    Given the user is on the login page
    And the user enters the "store manager" information
    And navigate to "Fleet" module and select "Vehicles" option
    And copy the url
    And the user logout
    When the user copy and paste url
    Then the user should land on the "Login" page

  @PERF-786
  Scenario: User gets warning message for invalid username & valid password
    Given the user is on the login page
    And the user enters the "invalid" username input
    And the user enters the "valid" password input
    When the user click on "Login" button
    Then "Invalid user name or password." message should be displayed

  @PERF-787
  Scenario: User gets warning message for valid username & invalid password
    Given the user is on the login page
    And the user enters the "valid" username input
    And the user enters the "invalid" password input
    When the user click on "Login" button
    Then "Invalid user name or password." message should be displayed

  @PERF-788
  Scenario: User gets warning message for invalid username & invalid password
    Given the user is on the login page
    And the user enters the "invalid" username input
    And the user enters the "invalid" password input
    When the user click on "Login" button
    Then "Invalid user name or password." message should be displayed

  @PERF-789
  Scenario: User gets alert message when username is filled and password field is empty
    Given the user is on the login page
    And the user enters the "valid" username input
    And the user enters the "blank" password input
    When the user click on "Login" button
    Then "Please fill out this field." alert should be displayed on "password" input

  @PERF-790
  Scenario: User gets alert message when username is empty and password field is filled
    Given the user is on the login page
    And the user enters the "blank" username input
    And the user enters the "valid" password input
    When the user click on "Login" button
    Then "Please fill out this field." alert should be displayed on "username" input

  @PERF-791
  Scenario: User get alert message for empty fields
    Given the user is on the login page
    And the user enters the "blank" username input
    And the user enters the "blank" password input
    When the user click on "Login" button
    Then "Please fill out this field." alert should be displayed on "username" input

  @PERF-792
  Scenario: User see the password in bullet signs while typing
    Given the user is on the login page
    When the user enters the "valid" password input
    Then the user sees only bullet signs

  @PERF-793
  Scenario: User lands on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
    Given the user is on the login page
    When the user click on the "Forgot your password?" link
    Then the user should land on the "Forgot Password" page

  @PERF-794
  Scenario: User can change their password with the username
    Given the user is on the login page
    And the user click on the "Forgot your password?" link
    When the user enters the "valid" username input
    Then the user gets "Success" update message

  @PERF-795
  Scenario: User can see "Remember me on this computer" checkbox on the login page and it should be clickable
    Given the user is on the login page
    Then the user sees "Remember me on this computer" checkbox
    And checkbox is clickable

  @PERF-796
  Scenario: User can log in pressing "Enter" key from their keyboard
    Given the user is on the login page
    And the user enters the "valid" username input
    And the user enters the "valid" password input
    When the user press on "Enter" button on keyboard
    Then the user should land on the "Dashboard" page

  @PERF-797 @wip
  Scenario: User can use "Enter" button on login page
    Given the user is on the login page
    And the user enters the "valid" username input
    And the user press on "Enter" button on keyboard
    And the user enters the "valid" password input
    When the user press on "Enter" button on keyboard
    Then the user should land on the "Dashboard" page

  @PERF-798
  Scenario: Driver can see their own usernames in profile menu, after successful login
    Given the user is on the login page
    When the user enters the "truck driver" information
    Then the user can see "driver username" in profile menu

  @PERF-799
  Scenario: Store manager can see their own usernames in profile menu, after successful login
    Given the user is on the login page
    When the user enters the "store manager" information
    Then the user can see "store manager username" in profile menu

  @PERF-800
  Scenario: Sales manager can see their own usernames in profile menu, after successful login
    Given the user is on the login page
    When the user enters the "sales manager" information
    Then the user can see "sales manager username" in profile menu


















