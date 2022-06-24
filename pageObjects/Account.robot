*** Settings ***
Documentation         Account related keyword
Variables             ../resources/accountpage_locators.yaml

*** Variables ***
${HOMEPAGE_URL}     http://automationpractice.com/index.php

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=chrome    url=${HOMEPAGE_URL}

Verify Current Url Is Homepage Url
    [Documentation]             Verify current url is homepage url
    Location Should Be          ${HOMEPAGE_URL}

Click Button Sign In to Login
    [Documentation]             Click Button Sign In to Login
    Click Element               ${signin_button}
    Element Should Be Visible   ${authentication_login}
    Input Text                  ${id_email}                             membuatakunbaru@gmail.com
    Input Text                  ${id_password}                          inipassword
    Click Element               ${id_submitLogin}

Click View Info My Orders
    [Documentation]             Click View Info My Orders
    Click Element               ${info_orders}
    Click Element               ${back_account}

Click View Info My Wishlists
    [Documentation]             Click View Info My Wishlists
    Click Element               ${info_wishlist}
    Input Text                  ${id_name}                              favorite items
    Click Element               ${id_submit}
    Click Element               ${back_account}

Click View Info My Credit Slips
    [Documentation]             Click View Info My Credit Slips
    Click Element               ${info_creditSlip}
    Click Element               ${back_account}

Click View Info My Addresses
    [Documentation]             Click View Info My Addresses
    Click Element               ${info_address}
    Click Element               ${back_account}

Click View Info My Personal Information 
    [Documentation]             Click View Info My Personal Information
    Click Element               ${info_personal}
    Click Element               ${back_account}

