*** Settings ***
Documentation           Base related keywords
Library                 SeleniumLibrary

*** Variables ***
${HOMEPAGE_URL}     http://automationpractice.com/index.php

*** Keywords ***
Open Chrome Browser
    [Documentation]         Keyword to open browser with chrome
    Open Browser            browser=chrome      url=${HOMEPAGE_URL}