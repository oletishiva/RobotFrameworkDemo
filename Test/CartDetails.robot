*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${ProductLink}  id:"lnk-viewBreadcrumb-2"
${AddToCartButton}  //*[@class='Button__StyledButton-r30g8h-0 uwdlB AddToCartButton__AddToCartButtonElem-dtemKR bwuoky']
${AddItemSuccessMessage}  //*[@class="Alert-jglfde-0 Notification__CustomAlert-lcdOEy fmgHJA"]


*** Keywords ***
Navigate Back To product Section
    Click Element  ${productLink}

Add item into cart
    Wait Until Element is visible  ${AddToCartButton}   timeout=10s
    Click Element  ${AddToCartButton}
    Wait Until Element is visible  ${AddItemSuccessMessage}  timeout=10s