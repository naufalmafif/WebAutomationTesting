*** Settings ***
Documentation         Register related keyword
Variables             ../resources/registerpage_locators.yaml

*** Variables ***
${HOMEPAGE_URL}     http://automationpractice.com/index.php

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=chrome    url=${HOMEPAGE_URL}

I Click Button Sign In to Menu Register
    [Documentation]                 I Click Button Sign In to Menu Register
    Click Element                   ${signin_button}
    Element Should Be Visible       ${authenticaton_columns}    

I Create an Account to Register Form 
    [Documentation]                 I Create an Account to Register Form
    Input Text                      ${emailcreate_form}         membuatakun@gmail.com
    Click Element                   ${submitcreate_button} 
    Wait Until Element Is Visible   ${id_gender}

I Click Radio Button Title
    [Documentation]                 I Click Radio Button Title
    Click Element                   ${id_gender}
    
I am Typing First Name in the Field Register Form
    [Documentation]                 I am Typing First Name in the Field Register Form
    Input Text                      ${first_name}               akun

I am Typing Last Name in the Field Register Form
    [Documentation]                 I am Typing Last Name in the Field Register Form
    Input Text                      ${last_name}                baru

I am Typing Email in the Field Register Form
    [Documentation]                 I am Typing Email in the Field Register Form
    Input Text                      ${input_email}              membuatakunbaru1@gmail.com

I am Typing Password in the Field Register Form
    [Documentation]                 I am Typing Password in the Field Register Form
    Input Text                      ${input_password}           inipassword

I am Select Date of Birth Dropdown
    [Documentation]                 I am Select Days on Date of Birth Dropdown
    Select From List By Index       ${id_days}                  2
    Select From List By Index       ${id_months}                4
    Select From List By Index       ${id_years}                 25

I am Select checkbox of Sign up for our newsletter!
    [Documentation]                 I am Select checkbox of Sign up for our newsletter!
    Click Element                   ${id_newsletter}

I am Select checkbox of Receive special offers from our partners!
    [Documentation]                 I am Select checkbox of Receive special offers from our partners!
    Click Element                   ${id_optin}

I am Typing Company in the Field Register Form
    [Documentation]                 I am Typing Company in the Field Register Form
    Input Text                      ${id_company}               Pacific

I am Typing Address in the Field Register Form
    [Documentation]                 I am Typing Address in the Field Register Form
    Input Text                      ${id_address1}              P.O Sir Alx

I am Typing Address - Line 2 in the Field Register Form
    [Documentation]                 I am Typing Address - Line 2 in the Field Register Form
    Input Text                      ${id_address2}              Pasir Putih Selatan

I am Typing City in the Field Register Form
    [Documentation]                 I am Typing City in the Field Register Form
    Input Text                      ${id_city}                  LA galaxy

I am Select State in the Field Register Form
    [Documentation]                 I am Select State in the Field Register Form
    Select From List By Index       ${id_state}                  5


I am Typing Zip/Postal Code in the Field Register Form
    [Documentation]                 I am Typing Zip/Postal Code in the Field Register Form
    Input Text                      ${id_postcode}                11258

I am Select Country in the Field Register Form
    [Documentation]                 I am Select State in the Field Register Form
    Select From List By Index       ${id_country}                  1

I am Typing Additional information in the Field Register Form
    [Documentation]                 I am Typing Zip/Postal Code in the Field Register Form
    Input Text                      ${id_other}                     sudah cukup

I am Typing Home phone in the Field Register Form
    [Documentation]                 I am Typing Home phone in the Field Register Form
    Input Text                      ${id_phone}                     07864863

I am Typing Mobile Number in the Field Register Form
    [Documentation]                 I am Typing Mobile phone in the Field Register Form
    Input Text                      ${id_phonemobile}               08787878787

I am Typing Assign an address alias for future reference in the Field Register Form
    [Documentation]                 I am Typing Assign an address alias for future reference in the Field Register Form
    Input Text                      ${id_alias}                     tidak ada

I Click Button Register to Submit Account
    [Documentation]                 I Click Button Register to Submit Account
    Click Element                   ${id_submitAccount}
