*** Settings ***
Documentation           Contact Us related keyword
Variables               contactuspage_locators.yaml

*** Variables ***
${HOMEPAGE_URL}         http://automationpractice.com/index.php
${akun_email}           membuatakunbaru@gmail.com
${no_order}             UEYQJPPMN
${directory}            F:/Dojobox/Demo/WebAutomationTesting/assets/IN219748.pdf
${message_info}         terkendala pembayaran
${success_message}  Your message has been successfully sent to our team.

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome    url=${HOMEPAGE_URL}
    Maximize Browser Window

Verify Current Url Is Homepage Url
    [Documentation]                 Verify current url is homepage url
    Location Should Be              ${HOMEPAGE_URL}

Click Button Contact Us Menu 
    [Documentation]                 Click Button Contact Us Menu
    Click Element                   ${contactus_button}

Verify Contact Us Title Appears
    Element Should Be Visible       ${contact_us_title}

Verify Contact Us Subtitle Appears
    Element Should Be Visible       ${contact_us_subtitle}

Choose Subject Heading Contact
    [Documentation]                 Choose Subject Heading Contact
    Select From List By Index       ${id_contact}               1
    
Input Email Address Form
    [Documentation]                 Input Email Address Form
    Input Text                      ${id_email}                 ${akun_email}
Input Order Reference Form
    [Documentation]                 Input Order Reference Form
    Input Text                      ${id_order}                 ${no_order}

Choose Attach File 
    [Documentation]                 Choose Attach File
    Choose File                     ${upload_file}              ${directory}
   
Input Message 
    [Documentation]                 Input Message
    Input Text                      ${id_message}               ${message_info}

Click Button Send
    [Documentation]                 Click Button Send
    Click Element                   ${id_submitmsg}

Verify Success Status
    Element Should Contain          ${success_status}           ${success_message}