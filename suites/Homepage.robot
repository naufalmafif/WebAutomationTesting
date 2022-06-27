*** Settings ***
Documentation       Homepage test cases
Library             SeleniumLibrary
Resource            ../pageObjects/Homepage.robot

*** Test Cases ***
User Should Be Able To See Homepage.
    [Documentation]       Test to verify that user should be able to see homepage
    [Setup]               Open Browser Chrome
    Verify Current Url Is Homepage Url
    Verify Homepage Header Appears
    Verify Contact Us Button Appears
    Verify Sign in Button Appears
    Verify Homepage Title Logo Appears
    Verify Search Button Appears
    Verify Cart Button Appears
    Verify Category Women Button Appears
    Verify Homepage Popular Tab Appears
    Verify Homepage Best Seller Tab Appears
    Verify Homepage Footer Appears
    [Teardown]            Close Browser