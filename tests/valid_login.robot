*** Settings ***
Documentation   Test SauceDemo           
Library    SeleniumLibrary

*** Test Cases ***
Valid Login
    # open browser
    Open Browser    https://www.saucedemo.com/    chrome

    # check if in log in page
    Page Should Contain Element    login-button

    # input username
    Input Text    user-name    standard_user

    # input password
    Input Text    password    secret_sauce

    # click login button
    Click Button    login-button
    
    # should be open in products page
    Element Text Should Be    class:title    PRODUCTS
    
    # close browser
    [Teardown]    Close Browser