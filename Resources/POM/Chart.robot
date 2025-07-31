*** Settings ***

Resource    ../common.robot

*** Variables ***
${actualPriceLbl}             //p[@class="price-large-static"]//span[@class="price"]

*** Keywords ***

Assert that price is correct
    [Arguments]    ${price}
    Log To Console     ${price}
    ${actualPrice}=    Get Text    ${actualPriceLbl}
    ${digitsOnly}=    Evaluate    ''.join(filter(str.isdigit, '''${actualPrice}'''))
    Log To Console     ${digitsOnly}
    Should Be Equal    ${price}        ${digitsOnly}

