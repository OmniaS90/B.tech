*** Settings ***
Library           Browser
Resource          ../resources/common.robot

Suite Setup       Run Keywords    New Browser    browser=${BROWSER}    headless=${HEADLESS}  args=['--start-maximized']
...                                AND    Set Browser Timeout    0.5m
Test Setup        New Context     viewport=None
Test Timeout      0.5m
Test Teardown     Close Context
Suite Teardown    Close Browser
