*** Settings ***
Documentation         Homepage related keyword
Variables             ../resources/homepage_locators.yaml

*** Variables ***
${HOMEPAGE_URL}     http://automationpractice.com/index.php

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=chrome    url=${HOMEPAGE_URL}

Verify Current Url Is Homepage Url
    [Documentation]             Verify current url is homepage url
    Location Should Be          ${HOMEPAGE_URL}

Verify Homepage Header Appears
    [Documentation]             Verify Homepage Header Appears
    Element Should Be Visible   ${header_homepage}

Verify Contact Us Button Appears
    [Documentation]             Verify Homepage Contact Us Button Appears
    Element Should Be Visible   ${contactus_button}

Verify Sign in Button Appears
    [Documentation]             Verify Homepage Sign in Button Appears
    Element Should Be Visible   ${signin_button}

Verify Homepage Title Logo Appears
    [Documentation]             Verify homepage title appears
    Element Should Be Visible   ${titlelogo_homepage}

Verify Search Button Appears
    [Documentation]             Verify Homepage Search Button Appears
    Element Should Be Visible   ${search_button}

Verify Cart Button Appears
    [Documentation]             Verify Cart Button Appears
    Element Should Be Visible   ${cart_button}

Verify Category Women Button Appears
    [Documentation]             Verify Category Women Button Appears
    Element Should Be Visible   ${categorywomen_button}

Verify Category Dresses Button Appears
    [Documentation]             Verify Category Dresses Button Appears
    Element Should Be Visible   ${categorydresses_button}

Verify Category T-shirt Button Appears
    [Documentation]             Verify Category T-shirt Button Appears
    Element Should Be Visible   ${categorytshirt_button}

Verify Homepage Popular Tab Appears
    [Documentation]             Verify Homepage Popular Tab Appears
    Element Should Be Visible   ${tabpopular_button}

Verify Homepage Best Seller Tab Appears
    [Documentation]             Verify Homepage Best Seller Tab Appears
    Element Should Be Visible   ${tabbestseller_button}

Verify Homepage Footer Appears
    [Documentation]             Verify Homepage Footer Appears
    Element Should Be Visible   ${footer_homepage}

