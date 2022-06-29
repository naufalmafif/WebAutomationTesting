*** Settings ***
Documentation         Account related keyword
Variables             ../resources/accountpage_locators.yaml

*** Variables ***
${HOMEPAGE_URL}     http://automationpractice.com/index.php
${email}            membuatakunbaru@gmail.com
${password}         inipassword
${name}             favorite items
${firstname}        joni
${lastname}         yes papa
${address}          Sukatani barat utara selatan 
${address1}         Braga Chava Dave
${city}             Bandung
${city1}            Soreang    
${state}            16
${postcode}         41854
${postal}           88877
${country}          0
${hp}               0214122181
${home_phone}       88889999
${phone_mobile}     0899991111
${pm}               0848784852
${alias}            Rusun
${alias1}           Kantor1

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=chrome    url=${HOMEPAGE_URL}
    Maximize Browser Window

Verify Current Url Is Homepage Url
    [Documentation]                 Verify current url is homepage url
    Location Should Be              ${HOMEPAGE_URL}

Click Button Sign In to Login
    [Documentation]                 Click Button Sign In to Login
    Click Element                   ${signin_button}
    Element Should Be Visible       ${authentication_login}
    Input Text                      ${id_email}                             ${email}
    Input Text                      ${id_password}                          ${password}
    Click Element                   ${id_submitLogin}

Click View Info My Orders
    [Documentation]                 Click View Info My Orders
    Click Element                   ${info_orders}
    Click Element                   ${back_account}

Click View Info My Wishlists
    [Documentation]                 Click View Info My Wishlists
    Click Element                   ${info_wishlist}
    Input Text                      ${id_name}                              ${name}
    Click Element                   ${id_submit}
    Click Element                   ${back_account}

Click View Info My Credit Slips
    [Documentation]                 Click View Info My Credit Slips
    Click Element                   ${info_creditSlip}
    Click Element                   ${back_account}

Click View Info My Addresses
    [Documentation]                 Click View Info My Addresses
    Click Element                   ${info_address}

Click Add Address
    [Documentation]                 Click Add Address
    Click Element                   ${add_address}
    Input Text                      ${id_firstname}                         ${firstname}
    Input Text                      ${id_lastname}                          ${lastname}
    Input Text                      ${id_address}                           ${address1}
    Input Text                      ${id_city}                              ${city1}
    Select From List By Index       ${id_state}                             6
    Input Text                      ${id_postcode}                          ${postal}
    Select From List By Index       ${id_country}                           0
    Input Text                      ${id_hp}                                ${home_phone}
    Input Text                      ${id_pm}                                ${phone_mobile}
    Input Text                      ${id_alias}                             ${alias1}
    Click Element                   ${save_button}

Click Update Addresses
    [Documentation]                 Click Update Addresses
    Click Element                   ${update_address}
    Wait Until Element Is Visible   ${id_firstname}
    Input Text                      ${id_firstname}                ${firstname}
    Input Text                      ${id_address}                  ${address}
    Input Text                      ${id_city}                     ${city}
    Select From List By Index       ${id_state}                    ${state}
    Input Text                      ${id_postcode}                 ${postcode}
    Select From List By Index       ${id_country}                  ${country}
    Input Text                      ${id_hp}                       ${hp}
    Input Text                      ${id_pm}                       ${pm}
    Input Text                      ${id_alias}                    ${alias}
    Click Element                   ${save_button}
    Click Element                   ${back_account}

Click View Info My Personal Information 
    [Documentation]                 Click View Info My Personal Information
    Click Element                   ${info_personal}
    Input Text                      ${id_firstname}                ${firstname}
    Input Text                      ${id_lastname}                 ${lastname}
    Click Element                   ${back_account}

