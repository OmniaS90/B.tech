*** Settings ***

Resource    ../common.robot

*** Variables ***
${addToChartBtn}        //button[@id="product-addtocart-button"]
${chartBtn}             //button[@class="btn-common btn-regular medium super go-to-cart-btn"]
${priceLbl}             //span[@class="price"]

*** Keywords ***

assert item has an image
    Wait For Elements State    css=img.no-sirv-lazy-load[itemprop="image"] >> nth=0    visible    timeout=10s
    ${src}=    Get Attribute    css=img.no-sirv-lazy-load[itemprop="image"] >> nth=0    src
    Should Not Be Empty    ${src}

Extract item's price
    ${price}=    Get Text       ${priceLbl} >> nth=0
    ${digitsOnly}=    Evaluate    ''.join(filter(str.isdigit, '''${price}'''))
    Log To Console              ${digitsOnly}
    RETURN                      ${digitsOnly}

Add item to chart
    Handle Future Dialogs    action=accept
    Sleep    3s
    Click            	  xpath=${addToChartBtn}
    
Navigate to chart
    Click            	  xpath=${chartBtn}
        