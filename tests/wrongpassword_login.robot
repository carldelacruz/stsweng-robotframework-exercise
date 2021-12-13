*** Settings ***
Documentation   Test SauceDemo           
Library    SeleniumLibrary

*** Test Cases ***
Wrong Password Log In
    # open browser
    Open Browser    https://www.saucedemo.com/    chrome

    # check if in log in page
    Page Should Contain Element    login-button

    # input username
    Input Text    user-name    standard_user

    # input password
    Input Text    password    wrongpassword

    # click login button
    Click Button    login-button
    
    # should be open in products page
    Element Text Should Be    xpath://*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Username and password do not match any user in this service
    
    # close browser
    [Teardown]    Close Browser