*** Settings ***
Documentation           Contact Us related keyword
Variables               ../resources/contactuspage_locators.yaml

*** Variables ***
${HOMEPAGE_URL}         http://automationpractice.com/index.php

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome    url=${HOMEPAGE_URL}

Verify Current Url Is Homepage Url
    [Documentation]                 Verify current url is homepage url
    Location Should Be              ${HOMEPAGE_URL}

Click Button Contact Us Menu 
    [Documentation]                 Click Button Contact Us Menu
    Click Element                   ${contactus_button}

Choose Subject Heading Contact
    [Documentation]                 Choose Subject Heading Contact
    Select From List By Index       ${id_contact}               1
    
Input Email Address Form
    [Documentation]                 Input Email Address Form
    Input Text                      ${id_email}                 membuatakunbaru@gmail.com

Input Order Reference Form
    [Documentation]                 Input Order Reference Form
    Input Text                      ${id_order}                 UEYQJPPMN

Choose Attach File 
    [Documentation]                 Choose Attach File
    Choose File                     ${id_fileupload}            ../resources/files/IN219748.pdf

Input Message 
    [Documentation]                 Input Message
    Input Text                      ${id_message}               terkendala pembayaran

Click Button Send
    [Documentation]                 Click Button Send
    Click Element                   ${id_submitmsg}