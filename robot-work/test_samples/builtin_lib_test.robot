*** Settings ***
Documentation  ビルトインの機能を使ったテスト

# *** Test Cases ***
# コンソールを使ったテスト
#     # Hello, world! コメントアウトは「#」
#     log to console  Hello, world!

*** Test Cases ***
コンソールを使ったテスト
    コンソールに文字を出力する

*** Keywords ***
# 関数的な扱いができる
コンソールに文字を出力する
    log to console  Hello, world!