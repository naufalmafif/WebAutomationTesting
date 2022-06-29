*** Settings ***
Documentation         Login related keyword
Resource              ../Base.robot
Variables             ../LoginPage/loginpage_locators.yaml

*** Variables ***
${LOGIN_URL}                http://automationpractice.com/index.php?controller=authentication&back=my-account
${VALID_EMAIL}              membuatakunbaru@gmail.com
${UNREGISTERED_EMAIL}       membuatakun@baru.com
${INVALID_EMAIL}            membuatakunbaru
${PASSWORD}                 inipassword 

*** Keywords ***
Navigate To Login Page
    [Documentation]                         Keyword to Navigate user to Login Page
    Go To                                   ${LOGIN_URL}

Verify Current Url Is Login Url
    [Documentation]                         Keyword to verify current url is login url
    Wait Until Location Contain             ${LOGIN_URL}

Verify Login Section Appears
    [Documentation]                         Keyword to verify login section appears
    Wait Until Element Is Visible           ${login_section}
    Element Should Be Visible               ${emailInput_loginSection}
    Element Should Be Visible               ${passwordInput_loginSection}
    Element Should Be Visible               ${forgotpassword_loginSection}
    Element Should Be Visible               ${signInButton_loginSection}

Input User Email Address
    [Documentation]                         Keyword to Input user email address
    [Arguments]                             ${user_email}
    Input Text                              ${emailInput_loginSection}              ${user_email}

Input User Password Email 
    [Documentation]                         Keyword to Input user password email 
    [Arguments]                             ${user_password}
    Input Text                              ${passwordInput_loginSection}           ${user_password}

Click SignIn Button
    [Documentation]                         Keyword to Click SignIn Button
    Click Element                           ${signInButton_loginSection}
    
Verify Error Message Appears
    [Documentation]                         Keyword to verify error message appears
    &{all_error_type}                       Create Dictionary   invalid=invalid     unregistered=aunthentication
    Element Should Be Visible               ${${all_error_type.${error_type}}_errorMessage_loginPage}


