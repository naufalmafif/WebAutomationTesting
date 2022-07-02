*** Settings ***
Documentation       Account test cases
Library             SeleniumLibrary
Resource            ../pageObjects/AccountPage/Account.robot
Test Setup          Base.Open Chrome Browser
Test Teardown       Close Browser  

*** Test Cases ***
User Should Be Able To See Account View Info My Orders.
    [Documentation]       Test to verify that user should be able to see Account View Info My Orders
    Navigate To Account
    Click Button Sign In to Login
    Input Text Email                                    email=${email1}
    Input Passord Email                                 password=${password1}    
    Click SignIn Button  
    Click View Info My Orders

User Should Be Able To See Account View Info My Wishlists.
    [Documentation]       Test to verify that user should be able to see Account View Info My Wishlists
    Navigate To Account
    Click Button Sign In to Login
    Input Text Email                                    email=${email1}
    Input Passord Email                                 password=${password1}    
    Click SignIn Button  
    Click View Info My Wishlists                        name=${name1}

User Should Be Able To See Account View Info My Credit Slips.
    [Documentation]       Test to verify that user should be able to see Account View Info My Credit Slips
    Navigate To Account
    Click Button Sign In to Login
    Input Text Email                                    email=${email1}
    Input Passord Email                                 password=${password1}    
    Click SignIn Button 
    Click View Info My Credit Slips

User Should Be Able To See Account View Info My Addresses.
    [Documentation]       Test to verify that user should be able to see Account View Info My Addresses
    Navigate To Account
    Click Button Sign In to Login
    Input Text Email                                    email=${email1}
    Input Passord Email                                 password=${password1}    
    Click SignIn Button 
    Click View Info My Addresses

 User Should Be Able To See Create new Address
    [Documentation]     Test to User Should Be Able To See create new address
    Navigate To Account
    Click Button Sign In to Login
    Input Text Email                                    email=${email1}
    Input Passord Email                                 password=${password1}    
    Click SignIn Button 
    Click View Info My Addresses
    Click Add Address
    Input Firstname                                     firstname=${firstname1}
    Input Lastname                                      lastname=${lastname1}
    Input Address 1                                     address=${address1}
    Input City                                          city=${city1}
    Select State
    Input Postal                                        postal=${postal1}
    Select Country
    Input Home phone                                    home_phone=${home_phone1}
    Input phone mobile                                  phone_mobile=${phone_mobile1}
    Input alias                                         alias=${alias1}
    Click Save Button
       
User Should Be Able To See Account View Info My Personal Information.
    [Documentation]       Test to verify that user should be able to see Account View Info My Personal Information
    Navigate To Account
    Click Button Sign In to Login
    Input Text Email                                    email=${email1}
    Input Passord Email                                 password=${password1}    
    Click SignIn Button 
    Click View Info My Personal Information 
    Input Firstname                                     firstname=${firstname1}
    Input Lastname                                      lastname=${lastname1}
   

