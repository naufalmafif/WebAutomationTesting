*** Settings ***
Documentation         Homepage related keyword
Resource              ../Base.robot
Variables             homepage_locators.yaml

*** Variables ***
${HOMEPAGE_URL}     http://automationpractice.com/index.php

*** Keywords ***
Navigate To Homepage
    [Documentation]                         Keyword to Navigate user to Homepage
    Go To                                   ${HOMEPAGE_URL}
    Maximize Browser Window

Verify Current Url Is Homepage Url
    [Documentation]             Verify current url is homepage url
    Location Should Be          ${HOMEPAGE_URL}

Verify Banner Appears
    [Documentation]             Verify banner Appears
    Element Should Be Visible   ${banner_homepage}

Verify Logo Appears
    [Documentation]             Verify Logo Appears
    Element Should Be Visible   ${logo_homepage}

Verify Contact Us Button Appears
    [Documentation]             Verify Homepage Contact Us Button Appears
    Element Should Be Visible   ${contactus_button}

Verify Sign in Button Appears
    [Documentation]             Verify Homepage Sign in Button Appears
    Element Should Be Visible   ${signin_button}

Verify Search Button Appears
    [Documentation]             Verify Homepage Search Button Appears
    Element Should Be Visible   ${search_button}

Verify Cart Button Appears
    [Documentation]             Verify Cart Button Appears
    Element Should Be Visible   ${cart_button}

Verify Category Women Button Appears
    [Documentation]             Verify Category Women Button Appears
    Element Should Be Visible   ${categorywomen_button}

Verify Homepage Popular Tab Appears
    [Documentation]             Verify Homepage Popular Tab Appears
    Element Should Be Visible   ${tabpopular_button}

Verify Homepage Best Seller Tab Appears
    [Documentation]             Verify Homepage Best Seller Tab Appears
    Element Should Be Visible   ${tabbestseller_button}

Verify Homepage Footer Appears
    [Documentation]             Verify Homepage Footer Appears
    Element Should Be Visible   ${footer_homepage}

