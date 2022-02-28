package com.perfleet.step_definitions;

import com.perfleet.pages.DashboardPage;
import com.perfleet.pages.LoginPage;
import com.perfleet.utilities.ConfigurationReader;
import com.perfleet.utilities.Driver;
import io.cucumber.java.bs.A;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;


public class LoginStepDefs {

    LoginPage loginPage = new LoginPage();

    @Given("the user is on the login page")
    public void the_user_is_on_the_login_page() {
    }

    @When("the user enters the {string} information")
    public void the_user_enters_the_information(String usertype) {
        String username = null;
        String password = null;

        if(usertype.contains("driver")){
            username = ConfigurationReader.get("driver_username");
            password = ConfigurationReader.get("driver_password");
        } else if (usertype.contains("sales")){
            username = ConfigurationReader.get("sales_manager_username");
            password = ConfigurationReader.get("sales_manager_password");
        } else if (usertype.contains("store")){
            username = ConfigurationReader.get("store_manager_username");
            password = ConfigurationReader.get("store_manager_password");
        }

        loginPage.login(username,password);
    }

    @Then("the user should land on the {string} page")
    public void the_user_should_land_on_the_page(String expectedPageName) {
        if(expectedPageName.contains("Launchpad") || expectedPageName.contains("Dashboard")){
            Assert.assertEquals(expectedPageName, new DashboardPage().getPageSubTitle());
        } else {
            Assert.assertTrue(Driver.get().getTitle().contains(expectedPageName));
        }
    }

    @Given("navigate to {string} module and select {string} option")
    public void navigate_to_module_and_select_option(String module, String tab) {
        new DashboardPage().navigateToModule(module, tab);
    }

    @Given("copy the url")
    public String copy_the_url() {
        return Driver.get().getCurrentUrl();
    }

    @Given("the user logout")
    public void the_user_logout() {
        new DashboardPage().logOut();
    }

    @When("the user copy and paste url")
    public void the_user_copy_and_paste_url() {
        Driver.get().get(copy_the_url());
    }

    @Given("the user enters the {string} username input")
    public void the_user_enters_the_username_input(String username) {
        if(username.equalsIgnoreCase("valid")){
            username=ConfigurationReader.get("sales_manager_username");
        } if(username.equalsIgnoreCase("invalid")){
            username=ConfigurationReader.get("invalid_username");
        } if(username.equalsIgnoreCase("blank")){
            username=ConfigurationReader.get("blank_username");
        }
        loginPage.userName.sendKeys(username);
    }

    @Given("the user enters the {string} password input")
    public void the_user_enters_the_password_input(String password) {
        if(password.equalsIgnoreCase("valid")){
            password=ConfigurationReader.get("sales_manager_password");
        } if(password.equalsIgnoreCase("invalid")){
            password=ConfigurationReader.get("invalid_password");
        }  if(password.equalsIgnoreCase("blank")){
            password=ConfigurationReader.get("blank_password");
        }
        loginPage.password.sendKeys(password);
    }

    @When("the user click on {string} button")
    public void the_user_click_on_button(String login) {
        loginPage.submit.click();
    }

    @Then("{string} message should be displayed")
    public void message_should_be_displayed(String message) {
        Assert.assertEquals("Error Message", message, loginPage.errorMessage.getText());
    }

    @Then("{string} alert should be displayed on {string} input")
    public void alert_should_be_displayed_on_input(String alertMessage, String input) {
        String actualAlertMessage = null;
       if (input.equalsIgnoreCase("password")){
           actualAlertMessage = loginPage.password.getAttribute("validationMessage");
       } else  if (input.equalsIgnoreCase("username")){
           actualAlertMessage = loginPage.userName.getAttribute("validationMessage");
       }
        Assert.assertEquals(actualAlertMessage, alertMessage);
    }


    @Then("the user sees only bullet signs")
    public void the_user_sees_only_bullet_signs() {

        Assert.assertTrue(loginPage.password.getAttribute("type").equals("password"));

    }

    @When("the user click on the {string} link")
    public void the_user_click_on_the_link(String string) {
        loginPage.forgotYourPassword.click();
    }

    @Then("the user gets {string} update message")
    public void the_user_gets_update_message(String updateMessage) {
        Driver.get().findElement(By.cssSelector("button[type='submit']")).click();
        Assert.assertEquals("Update Message", updateMessage, loginPage.updatePasswordMessage.getText());
    }

    @Then("the user sees {string} checkbox")
    public void the_user_sees_checkbox(String checkboxText) {
       Assert.assertTrue(loginPage.rememberMeOnThisComputer.getText().equals(checkboxText));
    }

    @Then("checkbox is clickable")
    public void checkbox_is_clickable() throws InterruptedException {
        loginPage.rememberMeOnThisComputer.click();
        Thread.sleep(2000);
        Assert.assertTrue(loginPage.rememberMeCheckbox.isSelected());
    }

    @When("the user press on {string} button on keyboard")
    public void the_user_press_on_button_on_keyboard(String button) {

       if(button.equalsIgnoreCase("enter")) {
          loginPage.submit.sendKeys(Keys.ENTER);
       }
    }

    @Then("the user can see {string} in profile menu")
    public void the_user_can_see_in_profile_menu(String username) {
        if(username.contains("driver")){
            username = ConfigurationReader.get("driver_username");
        } else if (username.contains("sales")){
            username = ConfigurationReader.get("sales_manager_username");
        } else if (username.contains("store")){
            username = ConfigurationReader.get("store_manager_username");
        }

        Assert.assertEquals(username, new DashboardPage().getUserName());

    }



}
