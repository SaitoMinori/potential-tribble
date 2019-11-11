*** Settings ***
Documentation  テスト
Library   SeleniumLibrary

*** Test Cases ***
GoogleでみんなのPython勉強会を検索するテスト
    Set Selenium Speed      1s
    Open Browser  https://google.co.jp  Chrome

    Input Text  name=q  みんなのPython勉強会

    # Press Key  name=q  \\13
    Wait Until Page Contains Element   css:input.gNO89b 
    Click Element      css:input.gNO89b
    # Click Element    //input[@value='Google 検索']
    # 結果出力と検証
   
    ${links} =  Get Webelements  css=h3 > a
    :For  ${link}  IN  @{links}
        \  ${text} =  Get Text  ${link}
        \  Log To Console  ${text}
    # リンクが6件であること
    Length Should Be  ${links}  6
    Close Browser
