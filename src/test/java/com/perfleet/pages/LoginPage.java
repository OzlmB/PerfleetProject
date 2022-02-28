package com.perfleet.pages;

import com.perfleet.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage {

    public LoginPage(){
        PageFactory.initElements(Driver.get(), this);
    }

    @FindBy(id="prependedInput")
    public WebElement userName;

    @FindBy(id="prependedInput2")
    public WebElement password;

    @FindBy(name = "_submit")
    public WebElement submit;

    @FindBy(css = "a[href='/user/reset-request']")
    public WebElement forgotYourPassword;

    @FindBy(css = "div[class='alert alert-error']>div")
    public WebElement errorMessage;

    @FindBy(css = "div[class='alert alert-warn']")
    public WebElement updatePasswordMessage;

    @FindBy(css = "span[class='custom-checkbox__text']")
    public WebElement rememberMeOnThisComputer;

    @FindBy(id = "remember_me")
    public WebElement rememberMeCheckbox;

    public void login(String userNameStr, String passwordStr) {
        userName.sendKeys(userNameStr);
        password.sendKeys(passwordStr);
        submit.click();
        // verification that we logged
    }


}
