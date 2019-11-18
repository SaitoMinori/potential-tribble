*** Settings ***
Documentation  テスト
Library   SeleniumLibrary

*** Test Cases ***
local scafの確認テスト
    Set Selenium Speed      0.3s
    Open Browser  http://localhost:3000/users  Chrome

    Click Element  link=New User
    Input Text  name=user[name]  hogehoge
    Input Text  name=user[email]  hoge@hoge.com
    Input Text  name=user[phone]  123-456-7890

    Click Element  name=commit
    Page Should Contain    User was successfully created.
    Page Should Contain    hogehoge
    Page Should Contain    hoge@hoge.com
    Page Should Contain    123-456-7890
    Click Element  link=Back

    Click Element  link=Show
    ${Name} =    Get Text    //html/body/p[2]
    Should Be Equal            ${Name}      Name: hogehoge
    Log To Console  ${Name}
    ${Email} =    Get Text    //html/body/p[3]
    Should Be Equal            ${Email}      Email: hoge@hoge.com
    Log To Console  ${Email}
    ${Phone} =    Get Text    //html/body/p[4]
    Should Be Equal            ${Phone}      Phone: 123-456-7890
    Log To Console  ${Phone}
    Click Element  link=Back

    Click Element  link=Edit
    Input Text  name=user[name]  foooo
    Input Text  name=user[email]  foooo@hoge.com
    Input Text  name=user[phone]  098-7654-4321

    Click Element  name=commit
    Page Should Contain    User was successfully updated.
    ${Name} =    Get Text    //html/body/p[2]
    Should Be Equal            ${Name}      Name: foooo
    Log To Console  ${Name}
    ${Email} =    Get Text    //html/body/p[3]
    Should Be Equal            ${Email}      Email: foooo@hoge.com
    Log To Console  ${Email}
    ${Phone} =    Get Text    //html/body/p[4]
    Should Be Equal            ${Phone}      Phone: 098-7654-4321
    Log To Console  ${Phone}
    Click Element  link=Back

    Click Element  link=New User
    Input Text  name=user[name]  hogehoge
    Input Text  name=user[email]  hoge@hoge.com
    Input Text  name=user[phone]  123-456-7890
    Click Element  name=commit
    Click Element  link=Back

    ${links} =  Get Webelements  link=Destroy
    :For  ${link}  IN  @{links}
        \  Click Element  link=Destroy
        \  Handle Alert   ACCEPT

    Close Browser
