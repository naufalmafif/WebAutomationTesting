*** Settings ***
Documentation       Homepage test cases
Library             SeleniumLibrary
Resource            ../pageObjects/Base.robot
Resource            ../pageObjects/Homepage/Homepage.robot
Test Setup          Base.Open Chrome Browser
Test Teardown       Close Browser

*** Test Cases ***
User Should Be Able To See Homepage.
    [Documentation]       Test to verify that user should be able to see homepage
    Navigate To Homepage
    Verify Current Url Is Homepage Url
    Verify Banner Appears
    Verify Logo Appears
    Verify Contact Us Button Appears
    Verify Sign in Button Appears
    Verify Search Button Appears
    Verify Cart Button Appears
    Verify Category Women Button Appears
    Verify Homepage Popular Tab Appears
    Verify Homepage Best Seller Tab Appears
    Verify Homepage Footer Appears