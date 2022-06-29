*** Settings ***
Documentation       Order test cases
Library             SeleniumLibrary
Resource            ../pageObjects/Order.robot

*** Test Cases ***
User Should Be Able To See Order.
    [Documentation]       Test to verify that user should be able to see Order
    [Setup]               Open Browser Chrome
    # I am Order Printed Dress to Click Image Product
    I can input in search field
    I can click search icon
    I Click Button Add Cart to Order Printed Dress
    I am Continue Proceed to Checkout Order
    I am Proceed to Checkout Order from Cart Summary
    I am Authentication to Sign in 
    I am Select Delivery Address
    I Choose a Shipping Option
    I Choose Payment Method
    I Confirm My Order
    [Teardown]            Close Browser