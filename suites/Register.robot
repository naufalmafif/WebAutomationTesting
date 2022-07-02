*** Settings ***
Documentation       Register test cases
Library             SeleniumLibrary
Resource            ../pageObjects/Base.robot
Resource            ../pageObjects/RegisterPage/Register.robot
Test Setup          Base.Open Chrome Browser
Test Teardown       Close Browser

*** Test Cases ***
User Should Be Able To See Register.
    [Documentation]       Test to verify that user should be able to see Register
    Navigate To Register
    I Create an Account to Register Form                                                    user_email=${emailBaru}
    I Click Radio Button Title
    I am Typing First Name in the Field Register Form                                       First_Name=${firstname_baru}       
    I am Typing Last Name in the Field Register Form                                        Last_Name=${lastname_baru}
    I am Typing Email in the Field Register Form                                            user_email=${emailBaru}
    I am Typing Password in the Field Register Form                                         user_password=${passwordBaru}
    I am Select Date of Birth Dropdown
    I am Select checkbox of Sign up for our newsletter!
    I am Select checkbox of Receive special offers from our partners!
    I am Typing Company in the Field Register Form                                          company_name=${company_name1}
    I am Typing Address in the Field Register Form                                          address_name=${address1}
    I am Typing Address - Line 2 in the Field Register Form                                 address_name=${address2}
    I am Typing City in the Field Register Form                                             city_name=${city_name1}          
    I am Select State in the Field Register Form
    I am Typing Zip/Postal Code in the Field Register Form                                  postal=${postal1}
    I am Select Country in the Field Register Form
    I am Typing Additional information in the Field Register Form                           other_message=${other_message1}
    I am Typing Home phone in the Field Register Form                                       home_phone=${home_phone1}
    I am Typing Mobile Number in the Field Register Form                                    mobile_phone=${mobile_phone1}
    I am Typing Assign an address alias for future reference in the Field Register Form     alias=${alias1}
    I Click Button Register to Submit Account