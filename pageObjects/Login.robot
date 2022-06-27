*** Settings ***
Documentation         Login related keyword
Variables             ../resources/loginpage_locators.yaml

*** Variables ***
${HOMEPAGE_URL}     http://automationpractice.com/index.php
${email}            membuatakunbaru@gmail.com
${password}         inipassword

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=chrome    url=${HOMEPAGE_URL}
    Maximize Browser Window

Verify Current Url Is Homepage Url
    [Documentation]             Verify current url is homepage url
    Location Should Be          ${HOMEPAGE_URL}

I Click Button Sign In to Login
    [Documentation]             I Click Button Sign In to Login
    Click Element               ${signin_button}
    Element Should Be Visible   ${authentication_login}

I am Typing Email address in the Field Signin Form
    [Documentation]             I am Typing Email address in the Field Signin Form
    Input Text                  ${id_email}                             ${email}

I am Typing Password address in the Field Signin Form
    [Documentation]             I am Typing Email address in the Field Signin Form
    Input Text                  ${id_password}                          ${password}

I Click Button Login 
    [Documentation]             I Click Button Login
    Click Element               ${id_submitLogin}
    Element Should Be Visible   ${info_akun}
    

