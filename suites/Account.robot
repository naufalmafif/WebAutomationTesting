*** Settings ***
Documentation       Account test cases
Library             SeleniumLibrary
Resource            ../pageObjects/AccountPage/Account.robot
Test Setup          Base.Open Chrome Browser
Test Teardown       Close Browser  

*** Test Cases ***
User Should Be Able To See Account.
    [Documentation]       Test to verify that user should be able to see Account
    Click Button Sign In to Login
    Click View Info My Orders
    Click View Info My Wishlists
    Click View Info My Credit Slips
    Click View Info My Addresses
    Click Add Address
    Click Update Addresses
    Click View Info My Personal Information 
   