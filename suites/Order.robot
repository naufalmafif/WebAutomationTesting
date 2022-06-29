*** Settings ***
Documentation       Order test cases
Library             SeleniumLibrary
Resource            ../pageObjects/OrderPage/Order.robot
Resource            ../pageObjects/Base.robot
Test Setup          Base.Open Chrome Browser
Test Teardown       Close Browser

*** Test Cases ***
User Should Be Able To Purchase Order.
    [Documentation]                         Test case to user should be able to purchase order
    Navigate To Order
    User has successfully logged in                     
    Input Email to Sign in                         id_email=${email_address}
    Input Password Email                           id_password=${password_email}
    Click Sign In Button
    input in search field                          search_item=${item_search}
    I can click search icon
    I Click Button Add Cart to Order Printed Dress
    I am Continue Proceed to Checkout Order
    I am Proceed to Checkout Order from Cart Summary
    I am Select Delivery Address
    I Choose a Shipping Option
    I Choose Payment Method
    I Confirm My Order