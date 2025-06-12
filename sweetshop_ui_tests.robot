*** Settings ***
Resource          sweetshop_keywords.robot
Test Setup        Open Browser to sweetshop
Test Teardown     Close Browser Session

*** Test Cases ***
# Navigation Tests
TC_SWEETSHOP_UI_001 - Home Page Should Load Sucessfully
    Navigate to Home
    Verify User Is On Page    Sweet Shop

TC_SWEETSHOP_UI_002 - Navigation to Basket Page Should Work
    Navigate to Basket Page
    Verify User Is On Page    Your Basket    