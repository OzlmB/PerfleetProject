@login
Feature: Login (As a user, I should be able to login.)


  Scenario Outline: User logs in with valid credentials
    Given the user is on the login page
    When the user enters the "<user>" information
    Then the user should land on the "<page>" page
    Examples:
      | user          | page            |
      | truck driver  | Quick Launchpad |
      | store manager | Dashboard       |
      | sales manager | Dashboard       |


  Scenario: User cannot access the application without providing credentials
    Given the user is on the login page
    And the user enters the "store manager" information
    And navigate to "Fleet" module and select "Vehicles" option
    And copy the url
    And the user logout
    When the user copy and paste url
    Then the user should land on the "Login" page


  Scenario Outline: User gets warning message for invalid fields
    Given the user is on the login page
    And the user enters the "<username>" username input
    And the user enters the "<password>" password input
    When the user click on "Login" button
    Then "<message>" message should be displayed
    Examples:
      | username | password | message                        |
      | invalid  | valid    | Invalid user name or password. |
      | valid    | invalid  | Invalid user name or password. |
      | invalid  | invalid  | Invalid user name or password. |


  Scenario Outline: User gets alert message when fileds is empty
    Given the user is on the login page
    And the user enters the "<username>" username input
    And the user enters the "<password>" password input
    When the user click on "Login" button
    Then "<message>" alert should be displayed on "<field>" input
    Examples:
      | username | password | message                     | field    |
      | valid    | blank    | Please fill out this field. | password |
      | blank    | valid    | Please fill out this field. | username |
      | blank    | blank    | Please fill out this field. | username |


  Scenario: User see the password in bullet signs while typing
    Given the user is on the login page
    When the user enters the "valid" password input
    Then the user sees only bullet signs


  Scenario: User lands on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
    Given the user is on the login page
    When the user click on the "Forgot your password?" link
    Then the user should land on the "Forgot Password" page


  Scenario: User can change their password with the username
    Given the user is on the login page
    And the user click on the "Forgot your password?" link
    When the user enters the "valid" username input
    Then the user gets "Success" update message


  Scenario: User can see "Remember me on this computer" checkbox on the login page and it should be clickable
    Given the user is on the login page
    Then the user sees "Remember me on this computer" checkbox
    And checkbox is clickable


  Scenario: User can log in pressing "Enter" key from their keyboard
    Given the user is on the login page
    And the user enters the "valid" username input
    And the user enters the "valid" password input
    When the user press on "Enter" button on keyboard
    Then the user should land on the "Dashboard" page


  Scenario: User can use "Enter" button on login page
    Given the user is on the login page
    And the user enters the "valid" username input
    And the user press on "Enter" button on keyboard
    And the user enters the "valid" password input
    When the user press on "Enter" button on keyboard
    Then the user should land on the "Dashboard" page


  Scenario Outline: Driver can see their own usernames in profile menu, after successful login
    Given the user is on the login page
    When the user enters the "<user>" information
    Then the user can see "<username>" in profile menu
    Examples:
      | user          | username               |
      | truck driver  | driver username        |
      | store manager | store manager username |
      | sales manager | sales manager username |





