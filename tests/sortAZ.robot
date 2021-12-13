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

    # click dropdown
    Click Element    class:product_sort_container

    # click sort a-z
    Click Element    xpath://*[@id="header_container"]/div[2]/div[2]/span/select/option[1]
    
    # close browser
    [Teardown]    Close Browser