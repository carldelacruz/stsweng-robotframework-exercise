***Settings***
Documentation   Test SauceDemo        
Library    SeleniumLibrary

***Test Cases***
Locked Out Login
    # open browser
    Open Browser    https://www.saucedemo.com/    chrome

    # check if in log in page
    Page Should Contain Element    login-button

    # input username
    Input Text    user-name    locked_out_user

    # input password
    Input Text    password    secret_sauce

    # click login button
    Click Button    login-button
    
    # should be open in products page
    Element Text Should Be    xpath://*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Sorry, this user has been locked out.

    # close browser
    [Teardown]    Close Browser