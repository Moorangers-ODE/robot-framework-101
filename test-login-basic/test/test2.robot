*** Comments ***
test2 : login failed
1.เปิดเว็บเข้า browser
2.login ด้วย user= admin@gmail.com and pass=ad
3.เข้าสู่หน้า login failed
4.ถ่ายภาพหน้าจอ
5.ปิดเว็บ


*** Settings ***
Library     Selenium2Library


*** Variables ***
${browser}      chrome
${url}          http://127.0.0.1:5500/index.html
${email}        admin@gmail.com
${passw}        ad


*** Test Cases ***
Open web browser
    Open Browser    about:blank    ${browser}
    Maximize Browser Window
    Go To    ${url}

signin
    Input Text    id=email    ${email}
    Input Text    id=passwd    ${passw}
    Click Button    btnsubmit
    Wait Until Page Contains    Login Failed
    Sleep    3

sceenshot
    Capture Page Screenshot

Test Teardown    Close Browser
