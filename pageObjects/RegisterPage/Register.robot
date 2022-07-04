*** Settings ***
Documentation         Register related keyword
Resource              ../Base.robot
Variables             registerpage_locators.yaml


*** Variables ***
${REGISTER_URL}     http://automationpractice.com/index.php?controller=authentication&back=my-account
${emailBaru}        membuatakunbaru98@gmail.com
${firstname_baru}   berbuatlah baik 1
${lastname_baru}    kepada orangtua 1
${passwordBaru}     inipassword
${company_name1}    PT. Pacific East Company
${address1}         Pasir Putih Selatan
${address2}         Bojong Kelor Ngalur Ngidul
${city_name1}       LA 
${postal1}          45810
${other_message1}   kosong
${home_phone1}      026847844
${mobile_phone1}    08787878787
${alias1}           Rusun

*** Keywords ***
Navigate To Register
    [Documentation]                 Keyword to Navigate user to Register
    Go To                           ${REGISTER_URL}
    Maximize Browser Window

I Create an Account to Register Form 
    [Documentation]                 I Create an Account to Register Form
    [Arguments]                     ${user_email}
    Input Text                      ${emailcreate_form}                 ${user_email}
    Click Element                   ${submitcreate_button} 
    

I Click Radio Button Title
    [Documentation]                 I Click Radio Button Title
    Wait Until Element Is Visible   ${id_gender}                        8s
    Click Element                   ${id_gender}
    
I am Typing First Name in the Field Register Form
    [Documentation]                 I am Typing First Name in the Field Register Form
    [Arguments]                     ${firstname}
    Input Text                      ${firstname_id}                       ${firstname}

I am Typing Last Name in the Field Register Form
    [Documentation]                 I am Typing Last Name in the Field Register Form
    [Arguments]                     ${lastname}
    Input Text                      ${lastname_id}                        ${lastname}

I am Typing Email in the Field Register Form
    [Documentation]                 I am Typing Email in the Field Register Form
    [Arguments]                     ${user_email}
    Input Text                      ${input_email}                      ${user_email}

I am Typing Password in the Field Register Form
    [Documentation]                 I am Typing Password in the Field Register Form
    [Arguments]                     ${user_password}
    Input Text                      ${input_password}                   ${user_password}

I am Select Date of Birth Dropdown
    [Documentation]                 I am Select Days on Date of Birth Dropdown
    Select From List By Index       ${id_days}                          2
    Select From List By Index       ${id_months}                        4
    Select From List By Index       ${id_years}                         25

I am Select checkbox of Sign up for our newsletter!
    [Documentation]                 I am Select checkbox of Sign up for our newsletter!
    Click Element                   ${id_newsletter}

I am Select checkbox of Receive special offers from our partners!
    [Documentation]                 I am Select checkbox of Receive special offers from our partners!
    Click Element                   ${id_optin}

I am Typing Company in the Field Register Form
    [Documentation]                 I am Typing Company in the Field Register Form
    [Arguments]                     ${company_name}
    Input Text                      ${id_company}                   ${company_name}

I am Typing Address in the Field Register Form
    [Documentation]                 I am Typing Address in the Field Register Form
    [Arguments]                     ${address_name}
    Input Text                      ${id_address1}                  ${address_name}

I am Typing Address - Line 2 in the Field Register Form
    [Documentation]                 I am Typing Address - Line 2 in the Field Register Form
    [Arguments]                     ${address_name}
    Input Text                      ${id_address2}                  ${address_name}

I am Typing City in the Field Register Form
    [Documentation]                 I am Typing City in the Field Register Form
    [Arguments]                     ${city_name}
    Input Text                      ${id_city}                      ${city_name}

I am Select State in the Field Register Form
    [Documentation]                 I am Select State in the Field Register Form
    Select From List By Index       ${id_state}                     5


I am Typing Zip/Postal Code in the Field Register Form
    [Documentation]                 I am Typing Zip/Postal Code in the Field Register Form
    [Arguments]                     ${postal}
    Input Text                      ${id_postcode}                  ${postal}

I am Select Country in the Field Register Form
    [Documentation]                 I am Select State in the Field Register Form
    Select From List By Index       ${id_country}                   1

I am Typing Additional information in the Field Register Form
    [Documentation]                 I am Typing Zip/Postal Code in the Field Register Form
    [Arguments]                     ${other_message}
    Input Text                      ${id_other}                     ${other_message}

I am Typing Home phone in the Field Register Form
    [Documentation]                 I am Typing Home phone in the Field Register Form
    [Arguments]                     ${home_phone}
    Input Text                      ${id_phone}                     ${home_phone}

I am Typing Mobile Number in the Field Register Form
    [Documentation]                 I am Typing Mobile phone in the Field Register Form
    [Arguments]                     ${mobile_phone}
    Input Text                      ${id_phonemobile}               ${mobile_phone}

I am Typing Assign an address alias for future reference in the Field Register Form
    [Documentation]                 I am Typing Assign an address alias for future reference in the Field Register Form
    [Arguments]                     ${alias}
    Input Text                      ${id_alias}                     ${alias}

I Click Button Register to Submit Account
    [Documentation]                 I Click Button Register to Submit Account
    Click Element                   ${id_submitAccount}
