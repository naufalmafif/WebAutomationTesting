*** Settings ***
Documentation         Account related keyword
Variables             accountpage_locators.yaml
Resource              ../Base.robot

*** Variables ***
${ACCOUNT_URL}      http://automationpractice.com/index.php
${email1}            membuatakunbaru@gmail.com
${password1}         inipassword
${name1}             favorite items
${firstname1}        joni
${lastname1}         yes papa
${address1}          Sukatani barat utara selatan 
${address2}         Braga Chava Dave
${city1}             Bandung
${city2}            Soreang    
${state1}            16
${postcode1}         41854
${postal1}           88877
${country1}          0
${hp1}               0214122181
${home_phone1}       88889999
${phone_mobile1}     0899991111
${pm1}               0848784852
${alias1}            Rusun
${alias2}           Kantor1

*** Keywords ***
Navigate To Account
    [Documentation]                  Keyword to Navigate user to Account
    Go To                            ${ACCOUNT_URL}
    Maximize Browser Window

Click Button Sign In to Login
    [Documentation]                 Click Button Sign In to Login
    Click Element                   ${signin_button}

Input Text Email
    [Arguments]                     ${email}
    Input Text                      ${id_email}                             ${email}

Input Passord Email
    [Arguments]                     ${password}
    Input Text                      ${id_password}                          ${password}

Click SignIn Button
    Click Element                   ${id_submitLogin}
    Wait Until Element Is Visible   ${info_orders}

Click View Info My Orders
    [Documentation]                 Click View Info My Orders
    Click Element                   ${info_orders}

Click View Info My Wishlists
    [Documentation]                 Click View Info My Wishlists
    [Arguments]                     ${name}
    Click Element                   ${info_wishlist}
    Input Text                      ${id_name}                              ${name1}
    Click Element                   ${id_submit}
   

Click View Info My Credit Slips
    [Documentation]                 Click View Info My Credit Slips
    Click Element                   ${info_creditSlip}

Click View Info My Addresses
    [Documentation]                 Click View Info My Addresses
    Click Element                   ${info_address}

Click Add Address
    [Documentation]                 Click Add Address
    Click Element                   ${add_address}

Input Firstname
    [Documentation]                 Input Firstname
    [Arguments]                     ${firstname}
    Input Text                      ${id_firstname}                         ${firstname}

Input Lastname
    [Documentation]                 Input lastname
    [Arguments]                     ${lastname}
    Input Text                      ${id_lastname}                          ${lastname}

Input Address 1
    [Documentation]                 Input address 1
    [Arguments]                     ${address}
    Input Text                      ${id_address}                           ${address}

Input City
    [Documentation]                 Input City
    [Arguments]                     ${city}
    Input Text                      ${id_city}                              ${city}

Select State
    [Documentation]                 Select State
    Select From List By Index       ${id_state}                             6

Input Postal
    [Documentation]                 Input Postal
    [Arguments]                     ${postal}
    Input Text                      ${id_postcode}                          ${postal}

Select Country
    [Documentation]                 Select Country
    Select From List By Index       ${id_country}                           0

Input Home phone
    [Documentation]                 Input Home Phone
    [Arguments]                     ${home_phone}
    Input Text                      ${id_hp}                                ${home_phone}

Input phone mobile                  
    [Documentation]                 Input Phone mobile
    [Arguments]                     ${phone_mobile}
    Input Text                      ${id_pm}                                ${phone_mobile}

Input alias
    [Documentation]                 Input alias
    [Arguments]                     ${alias}
    Input Text                      ${id_alias}                             ${alias1}

Click Save Button
    [Documentation]                 Click save button
    Click Element                   ${save_button}

Click View Info My Personal Information 
    [Documentation]                 Click View Info My Personal Information
    Click Element                   ${info_personal}

