package com.perfleet.step_definitions;

import com.perfleet.pages.DashboardPage;
import com.perfleet.utilities.BrowserUtils;
import com.perfleet.utilities.ConfigurationReader;
import com.perfleet.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.JavascriptExecutor;
import java.util.ArrayList;


public class LogoutStepDefs {

    @When("the user logs out using {string} button inside profile menu")
    public void the_user_logs_out_using_button_inside_profile_menu(String button) {
        if(button.equalsIgnoreCase("logout")){
            new DashboardPage().logOut();
        }
    }


    @When("the user navigates back")
    public void the_user_navigates_back() {

        Driver.get().navigate().back();
    }

    @When("the user closes the tab")
    public void the_user_closes_the_tab()  {
        ((JavascriptExecutor) Driver.get()).executeScript("window.open()");
        ArrayList<String> tabs = new ArrayList<String>(Driver.get().getWindowHandles());
        Driver.get().switchTo().window(tabs.get(1));
        Driver.get().switchTo().window(tabs.get(0));
        Driver.get().close();
        Driver.get().switchTo().window(tabs.get(1));
    }

    @And("the user navigates to the login page")
    public void the_user_navigates_to_the_page() {
       Driver.get().get(ConfigurationReader.get("url"));
       BrowserUtils.waitFor(3);
    }

    @Then("the user lands on the {string} page")
    public void the_user_lands_on_the_page(String expectedPageName) {
        BrowserUtils.waitFor(3);
        Assert.assertEquals(expectedPageName, Driver.get().getTitle());
    }

    @When("the user is away from keyboard for {int} minutes")
    public void the_user_is_away_from_keyboard_for_minutes(Integer min) {

        BrowserUtils.waitFor(60*min);
    }

    @When("the user refreshes the page")
    public void the_user_refreshes_the_page() {

        Driver.get().navigate().refresh();
        BrowserUtils.waitFor(4);
    }
}
