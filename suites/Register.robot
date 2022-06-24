*** Settings ***
Documentation       Register test cases
Library             SeleniumLibrary
Resource            ../pageObjects/Register.robot

*** Test Cases ***
User Should Be Able To See Register.
    [Documentation]       Test to verify that user should be able to see Register
    [Setup]               Open Browser Chrome
    I Click Button Sign In to Menu Register
    I Create an Account to Register Form 
    I Click Radio Button Title
    I am Typing First Name in the Field Register Form
    I am Typing Last Name in the Field Register Form
    I am Typing Email in the Field Register Form
    I am Typing Password in the Field Register Form
    I am Select Date of Birth Dropdown
    I am Select checkbox of Sign up for our newsletter!
    I am Select checkbox of Receive special offers from our partners!
    I am Typing Company in the Field Register Form
    I am Typing Address in the Field Register Form
    I am Typing Address - Line 2 in the Field Register Form
    I am Typing City in the Field Register Form
    I am Select State in the Field Register Form
    I am Typing Zip/Postal Code in the Field Register Form
    I am Select Country in the Field Register Form
    I am Typing Additional information in the Field Register Form
    I am Typing Home phone in the Field Register Form
    I am Typing Mobile Number in the Field Register Form
    I am Typing Assign an address alias for future reference in the Field Register Form
    I Click Button Register to Submit Account
    [Teardown]            Close Browser