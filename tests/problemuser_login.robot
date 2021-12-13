*** Settings ***
Documentation   Test SauceDemo           
Library    SeleniumLibrary

*** Test Cases ***
Problem User Log In
    # open browser
    Open Browser    https://www.saucedemo.com/    chrome

    # check if in log in page
    Page Should Contain Element    login-button

    # input username
    Input Text    user-name    problem_user

    # input password
    Input Text    password    secret_sauce

    # click login button
    Click Button    login-button
    
    # should be open in products page
    Page Should Contain Image    class:inventory_item_img    src    https://www.saucedemo.com/static/media/sl-404.168b1cce.jpg
    
    # close browser
    [Teardown]    Close Browser