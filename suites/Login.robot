*** Settings ***
Documentation       Login test cases
Library             SeleniumLibrary
Resource            ../pageObjects/Login.robot

*** Test Cases ***
User Should Be Able To See Login.
    [Documentation]       Test to verify that user should be able to see Login
    [Setup]               Open Browser Chrome
    I Click Button Sign In to Login
    I am Typing Email address in the Field Signin Form
    I am Typing Password address in the Field Signin Form
    I Click Button Login 


    [Teardown]            Close Browser