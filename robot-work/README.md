
### 導入

```
pip install pipenv
pipenv install robotframework robotframework-selenium2library
```
### 実行

```bash
# コンソール出力確認 Hello, world!
robot test_samples/builtin_lib_test.robot 

# GoogleでみんなのPython勉強会を検索する
robot test_samples/test_google.robot
robot test_samples/test_chrome.robot

# rails_work を動かしてみる
robot test_samples/test_scal.robot
```

### メモ (WebDriverException エラーが発生）

* https://usado.jp/spdsk/2018/03/23/post-3474/

☆ chromedriverを`/usr/local/bin/`にコピーする

* [ここからダウンロード](https://chromedriver.chromium.org/downloads)
* [ubuntuでChromeがアップデートされない場合の対応](https://mocabrown.com/blog/archives/5604)

### 参考

* [受け入れテストのフレームワークRobot Frameworkで、組込機能であるBuiltin Libraryを使ってみた](https://thinkami.hatenablog.com/entry/2017/07/13/225814)
* [メモ的な思考的な](https://thinkami.hatenablog.com/entry/2017/09/01/220008)
* [github](https://github.com/thinkAmi-sandbox/RobotFramework-sample/blob/master/selenium_getting_started/test_selenium.robot)
* [Robot Framework チートシート](https://robotframework-ja.readthedocs.io/ja/latest/cheatsheet.html)
* [CSSのセレクタとは？覚えておきたい25種類と書き方](https://saruwakakun.com/html-css/reference/selector)
* [Alert出たときにOKを押す](http://robotframework.org/Selenium2Library/Selenium2Library.html#Handle%20Alert)
