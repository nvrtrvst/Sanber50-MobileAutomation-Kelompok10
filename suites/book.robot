*** Settings ***
Resource               ../pageObjects/base.robot
Resource               ../pageObjects/homePage/homePage.robot
Resource               ../pageObjects/login/login.robot
Resource               ../pageObjects/bookFlight/bookFlight.robot

*** Test Cases ***
Verify Login Success - Valid User And Password
    Open Flight Application
    Verify Homepage Appears
    Click Log In Button
    Verify Login Page Appears
    Input Username Login Page
    Input Password Login Page
    Click Sign In Button
    Verify Main Page Appears

# Book Flight
    Click Book Button
    Click Location City
    Click Destination City
    Click Class Flight
    Click Radio Button
    Click Book Flight Button
    Click Price Flight
    Confirm Order
