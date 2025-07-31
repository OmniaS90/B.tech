*** Settings ***

Resource    ../common.robot

*** Variables ***
${searchTxtBx}                    //input[@id="search"]
${searchBtn}                      //div[@class="actions"]//button[@type="submit"]
${searchedItem}                   (//img[@class="product-image-photo"])[1]

*** Keywords ***

Open B.tech website
    New Page            ${Base_URL}
    get element         xpath=${searchTxtBx}

Search item    [Arguments]     ${item}
    fill text           xpath=${searchTxtBx}           ${item}
    Click            	xpath=${searchBtn}

Select the first search result
    Wait For Elements State    ${searchedItem}    visible
    Sleep                3s
    Scroll To            vertical=top
    Click            	 xpath=${searchedItem}

    

