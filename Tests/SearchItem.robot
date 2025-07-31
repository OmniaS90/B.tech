#######     Runners     ########
# robot  -d   Results      -i       SearchItem        Tests

*** Settings ***
Resource    ../Resources/POM/DashBoard.robot
Resource    ../Resources/POM/ItemPage.robot
Resource    ../Resources/POM/Chart.robot



*** Variables ***
${item}                    iphone 16
${Base_URL}                https://btech.com/




*** Test Cases ***

Add element to cart
    [Tags]       SearchItem
    Open B.tech website
    Search item    ${item}
    Select the first search result
    assert item has an image
    ${price}   Extract item's price
    Add item to chart
    Navigate to chart
    Assert that price is correct  ${price}


