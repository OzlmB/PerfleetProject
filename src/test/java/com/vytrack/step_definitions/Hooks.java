package com.vytrack.step_definitions;

import com.vytrack.utilities.Driver;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.util.concurrent.TimeUnit;

public class Hooks {

    @Before
    public void setUp(){

        System.out.println("\t this is from BEFORE");
    }

    @After
    public void tearDown(Scenario scenario){

        if(scenario.isFailed()){
            final byte[] screenshot = ((TakesScreenshot) Driver.get()).getScreenshotAs(OutputType.BYTES);
            scenario.embed(screenshot,"image/png","screenshot");
        }


        Driver.closeDriver();
    }

    @Before("@abc")
    public void setUpdb(){

        System.out.println("\t connecting to database...");
    }

    @After("@abc")
    public void closeDb(){

        System.out.println("\t disconnecting to database...");
    }
}
