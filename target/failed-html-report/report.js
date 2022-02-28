$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/features/Logout.feature");
formatter.feature({
  "name": "As a user I should be able to log out",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@logout"
    }
  ]
});
formatter.scenario({
  "name": "User is logged out if the user close the tabs",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@logout"
    },
    {
      "name": "@PERF-809"
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
  "name": "the user enters the \"store manager\" information",
  "keyword": "And "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LoginStepDefs.the_user_enters_the_information(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user should land on the \"Dashboard\" page",
  "keyword": "And "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LoginStepDefs.the_user_should_land_on_the_page(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user closes the tab",
  "keyword": "When "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LogoutStepDefs.the_user_closes_the_tab()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user navigates to the login page",
  "keyword": "And "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LogoutStepDefs.the_user_navigates_to_the_page()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user lands on the \"Login\" page",
  "keyword": "Then "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LogoutStepDefs.the_user_lands_on_the_page(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: expected:\u003c[Login]\u003e but was:\u003c[Dashboard]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat org.junit.Assert.assertEquals(Assert.java:146)\n\tat com.perfleet.step_definitions.LogoutStepDefs.the_user_lands_on_the_page(LogoutStepDefs.java:50)\n\tat ✽.the user lands on the \"Login\" page(file:///Users/nazik/IdeaProjects/PerfleetCucumber/src/test/resources/features/Logout.feature:26)\n",
  "status": "failed"
});
formatter.embedding("image/png", "embedded0.png", "screenshot");
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "User is logged out if the user is away from keyboard for 3 minutes",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@logout"
    },
    {
      "name": "@PERF-810"
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
  "name": "the user enters the \"store manager\" information",
  "keyword": "And "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LoginStepDefs.the_user_enters_the_information(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user is away from keyboard for 3 minutes",
  "keyword": "When "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LogoutStepDefs.the_user_is_away_from_keyboard_for_minutes(java.lang.Integer)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user refreshes the page",
  "keyword": "And "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LogoutStepDefs.the_user_refreshes_the_page()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "the user lands on the \"Login\" page",
  "keyword": "Then "
});
formatter.match({
  "location": "com.perfleet.step_definitions.LogoutStepDefs.the_user_lands_on_the_page(java.lang.String)"
});
formatter.result({
  "error_message": "org.junit.ComparisonFailure: expected:\u003c[Login]\u003e but was:\u003c[Dashboard]\u003e\n\tat org.junit.Assert.assertEquals(Assert.java:117)\n\tat org.junit.Assert.assertEquals(Assert.java:146)\n\tat com.perfleet.step_definitions.LogoutStepDefs.the_user_lands_on_the_page(LogoutStepDefs.java:50)\n\tat ✽.the user lands on the \"Login\" page(file:///Users/nazik/IdeaProjects/PerfleetCucumber/src/test/resources/features/Logout.feature:34)\n",
  "status": "failed"
});
formatter.embedding("image/png", "embedded1.png", "screenshot");
formatter.after({
  "status": "passed"
});
});