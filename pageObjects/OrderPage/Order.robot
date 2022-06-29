*** Settings ***
Documentation         Order related keyword
Resource              ../Base.robot
Variables             orderpage_locators.yaml

*** Variables ***
${ORDER_URL}                http://automationpractice.com/index.php?controller=order
${email_address}            membuatakunbaru@gmail.com
${password_email}           inipassword
${item_search}              printed dress

*** Keywords ***
Navigate To Order
    [Documentation]                 Keyword to Navigate user to Register
    Go To                           ${ORDER_URL}
    Maximize Browser Window

User has successfully logged in
    [Documentation]                 Keyword to User has successfully logged in
    Click Element                   ${click_signin}

Input Email to Sign in
    [Documentation]                 I am Input Email to Sign in
    [Arguments]                     ${id_email} 
    Input Text                      ${nama_email}                            ${id_email}

Input Password Email 
    [Documentation]                 Keyword to Input password email
    [Arguments]                     ${id_password}
    Input Text                      ${nama_password}                         ${id_password}

Click Sign In Button
    [Documentation]                 Keyword to click sign in button
    Click Element                   ${signin_button}

input in search field
    [Documentation]                 I can input in search field
    [Arguments]                     ${search_item}
    Input Text                      ${search_field}     ${search_item}

I can click search icon
    [Documentation]                 I can click search icon
    Click Element                   ${search_button}  

I Click Add to Cart Item Printed Dress
    [Documentation]                 I click add to cart item printed dress
    Click Element                   ${click_item}

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