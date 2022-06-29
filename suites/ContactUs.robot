*** Settings ***
Documentation       Contact Us test cases
Library             SeleniumLibrary
Resource            ../pageObjects/Base.robot
Resource            ../pageObjects/ContactUsPage/ContactUs.robot
Test Setup          Base.Open Chrome Browser
Test Teardown       Close Browser

*** Test Cases ***
User Should Be Able To See Contact Us.
    [Documentation]       Test to verify that user should be able to see Contact Us
    Navigate To Contact Us
    Choose Subject Heading Contact
    Input Email Address Form                            akun_email=${akun_email1}
    Input Order Reference Form                          no_order=${no_order1}                            
    Choose Attach File                                  directory=${directory1}
    Input Message                                       message_info=${message_info1}
    Click Button Send
    Verify Success Status