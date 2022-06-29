*** Settings ***
Documentation           Contact Us related keyword
Variables               contactuspage_locators.yaml
Resource              ../Base.robot

*** Variables ***
${CONTACTUS_URL}         http://automationpractice.com/index.php?controller=contact
${akun_email1}           membuatakunbaru@gmail.com
${no_order1}             UEYQJPPMN
${directory1}            F:/Dojobox/Demo/WebAutomationTesting/assets/IN219748.pdf
${message_info1}         terkendala pembayaran
${success_message}      Your message has been successfully sent to our team.

*** Keywords ***
Navigate To Contact Us
    [Documentation]                  Keyword to Navigate user to Contact us
    Go To                            ${CONTACTUS_URL}
    Maximize Browser Window

Verify Current Url Is Homepage Url
    [Documentation]                 Verify current url is homepage url
    Location Should Be              ${CONTACTUS_URL}

Click Button Contact Us Menu 
    [Documentation]                 Click Button Contact Us Menu
    Click Element                   ${contactus_button}

Verify Contact Us Title Appears
    [Documentation]                 Verify Contact Us Title Appears
    Element Should Be Visible       ${contact_us_title}

Verify Contact Us Subtitle Appears
    [Documentation]                 Verify Contact Us Subtitle Appears
    Element Should Be Visible       ${contact_us_subtitle}

Choose Subject Heading Contact
    [Documentation]                 Choose Subject Heading Contact
    Select From List By Index       ${id_contact}               1
    
Input Email Address Form
    [Documentation]                 Input Email Address Form
    [Arguments]                     ${akun_email}
    Input Text                      ${id_email}                 ${akun_email}

Input Order Reference Form
    [Documentation]                 Input Order Reference Form
    [Arguments]                     ${no_order}
    Input Text                      ${id_order}                 ${no_order}

Choose Attach File 
    [Documentation]                 Choose Attach File
    [Arguments]                     ${directory}
    Choose File                     ${upload_file}              ${directory}
   
Input Message 
    [Documentation]                 Input Message
    [Arguments]                     ${message_info}
    Input Text                      ${id_message}               ${message_info}

Click Button Send
    [Documentation]                 Click Button Send
    Click Element                   ${id_submitmsg}

Verify Success Status
    [Documentation]                 Verify Success Status
    Element Should Contain          ${success_status}           ${success_message}