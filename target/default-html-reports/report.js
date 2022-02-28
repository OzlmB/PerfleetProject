$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/features/Login.feature");
formatter.feature({
  "name": "Login (As a user, I should be able to login.)",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@login"
    }
  ]
});
formatter.scenario({
  "name": "User can use \"Enter\" button on login page",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@login"
    },
    {
      "name": "@PERF-797"
    },
    {
      "name": "@wip"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "the user is on the login page",
  "keyword": "Given "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LoginStepDefs.the_user_is_on_the_login_page()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user enters the \"valid\" username input",
  "keyword": "And "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LoginStepDefs.the_user_enters_the_username_input(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user press on \"Enter\" button on keyboard",
  "keyword": "And "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LoginStepDefs.the_user_press_on_button_on_keyboard(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user enters the \"valid\" password input",
  "keyword": "And "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LoginStepDefs.the_user_enters_the_password_input(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user press on \"Enter\" button on keyboard",
  "keyword": "When "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LoginStepDefs.the_user_press_on_button_on_keyboard(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user should land on the \"Dashboard\" page",
  "keyword": "Then "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LoginStepDefs.the_user_should_land_on_the_page(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
});