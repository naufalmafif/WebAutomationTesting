*** Settings ***
Documentation         Order related keyword
Variables             ../resources/orderpage_locators.yaml

*** Variables ***
${HOMEPAGE_URL}     http://automationpractice.com/index.php
${email}            membuatakunbaru@gmail.com
${password}         inipassword
${item}             blouse

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=chrome    url=${HOMEPAGE_URL}
    Maximize Browser Window

Verify Current Url Is Homepage Url
    [Documentation]                 Verify current url is homepage url
    Location Should Be              ${HOMEPAGE_URL}

I can input in search field
    [Documentation]                 I can input in search field
    Input Text                      ${search_field}     ${item}

I can click search icon
    [Documentation]                 I can click search icon
    Click Element                   ${search_button}  

I Click Button Add Cart to Order Printed Dress
    [Documentation]                 I Click Button Add Cart to Order Printed Dress
    Click Element                   ${add_cart}

I am Continue Proceed to Checkout Order
    [Documentation]                 I am Continue Proceed to Checkout Order 
    Wait Until Element Is Visible   ${proceed_button}
    Click Element                   ${proceed_button}
    Element Should Be Visible       ${cart_summary}

I am Proceed to Checkout Order from Cart Summary
    [Documentation]                 I am Proceed to Checkout Order from Cart Summary
    Wait Until Element Is Visible   ${checkout_button}
    Click Element                   ${checkout_button}
    Element Should Be Visible       ${order_step}

I am Authentication to Sign in 
    [Documentation]                 I am Authentication to Sign in 
    Input Text                      ${email}                            ${email}
    Input Text                      ${password}                         ${password}
    Click Element                   ${signin_button}

I am Select Delivery Address
    [Documentation]                 I am Select Delivery Address
    Click Element                   ${process_address}
    Wait Until Element Is Visible   ${process_address}

I Choose a Shipping Option
    [Documentation]                 I Choose a Shipping Option
    
    Click Element                   ${checkbox}
    Element Should Be Visible       ${process_carrier}

I Choose Payment Method
    [Documentation]                 I Choose Payment Method
    Click Element                   ${payment}

I Confirm My Order
    [Documentation]                 I Confirm My Order
    Click Element                   ${confirm_order}