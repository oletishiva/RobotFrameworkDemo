*** Settings ***
Library           SeleniumLibrary
Library  DateTime
Library  BuiltIn

*** Variables ***
${Cart}  //*[@id="btn-openMiniCart"]/img
${CartHeader}  //*[@class="Padding-sc-10o2jvk-0 jYpZwl"]


*** Keywords ***

Checkout Cart
    Click Element  ${Cart}
    Wait Until Element is visible  ${CartHeader}
    

