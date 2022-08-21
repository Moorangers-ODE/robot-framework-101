*** Settings ***
Library     Selenium2Library


*** Variables ***
${browser}      chrome
${url}          https://google.com/
${keyword}      learn corporation


*** Test Cases ***
search google
    เปิดเว็บ
    ค้นหาตาม keywords
    เปิดเว็บแรกที่หาเจอ
    Wait Until Page Contains    main
    Capture Page Screenshot

Test Teardown    Close Browser


*** Keywords ***
เปิดเว็บ
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

ค้นหาตาม keywords
    Input Text    name=q    ${keyword}
    # Submit Form
    Click Button    btnK

เปิดเว็บแรกที่หาเจอ
    Click Element    css=#rso > div:nth-child(1) > div > div > div > div > div > div > div.yuRUbf > a > h3
