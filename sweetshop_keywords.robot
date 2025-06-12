*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}             https://sweetshop.netlify.app/
${HOME_PAGE_URL}        ${BASE_URL}
${BASKET_PAGE_URL}      ${BASE_URL}basket

# Browser Settings
${BROWSER}    chrome

# Selectors
${BASKET_ICON}    css:.badge-success


*** Keywords ***
# Setup and Teardown
Open Browser to sweetshop
    Open Browser    ${HOME_PAGE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s

Close Browser Session
    Close Browser

# General Navigation Keywords
Navigate to Home
    Go To    ${HOME_PAGE_URL}
    Wait Until Page Contains    Sweet Shop

Navigate to Basket Page
    Click Element    ${BASKET_ICON}
    Wait Until Location Is    ${BASKET_PAGE_URL}

# Assertions Keywords
Verify User Is On Page
    [Arguments]    ${page_title_text}
    Wait Until Page Contains    ${page_title_text}
    Page Should Contain    ${page_title_text}
    