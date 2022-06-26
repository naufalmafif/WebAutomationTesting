*** Settings ***
Documentation       Contact Us test cases
Library             SeleniumLibrary
Resource            ../pageObjects/ContactUs.robot

*** Test Cases ***
User Should Be Able To See Contact Us.
    [Documentation]       Test to verify that user should be able to see Contact Us
    [Setup]               Open Browser Chrome
    Click Button Contact Us Menu 
    Choose Subject Heading Contact
    Input Email Address Form
    Input Order Reference Form
    # Choose Attach File 
    Input Message 
    Click Button Send
    [Teardown]            Close Browser