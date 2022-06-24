*** Settings ***
Documentation         Order related keyword
Variables             ../resources/orderpage_locators.yaml

*** Variables ***
${HOMEPAGE_URL}     http://automationpractice.com/index.php

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=chrome    url=${HOMEPAGE_URL}

Verify Current Url Is Homepage Url
    [Documentation]             Verify current url is homepage url
    Location Should Be          ${HOMEPAGE_URL}

I am Order Printed Dress to Click Image Product
    [Documentation]             I am Order Printed Dress to Click Image Product
    Click Element               ${click_product}

I Click Button Add Cart to Order Printed Dress
    [Documentation]             I Click Button Add Cart to Order Printed Dress
    Click Element               ${add_cart}

I am Continue Proceed to Checkout Order
    [Documentation]             I am Continue Proceed to Checkout Order 
    Wait Until Element Is Visible   ${proceed_button}
    Click Element                   ${proceed_button}
    
    # Element Should Be Visible   ${cart_summary}

I am Proceed to Checkout Order from Cart Summary
    [Documentation]             I am Proceed to Checkout Order from Cart Summary
    Click Element               ${checkout_button}
    Element Should Be Visible   ${order_step}

I am Authentication to Sign in 
    [Documentation]             I am Authentication to Sign in 
    Input Text                  ${email}                            membuatakunbaru@gmail.com
    Input Text                  ${password}                         inipassword
    Click Element               ${signin_button}

