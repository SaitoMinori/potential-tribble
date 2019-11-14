== README

## 事前準備

* [Ubuntu 18.04 に Ruby 環境構築 rbenv インストール](https://mhaya18.hatenablog.com/entry/2018/09/01/090051)
* [【Rails入門説明書】scaffoldについて解説](https://web-camp.io/magazine/archives/16850)

```bash
minorisaito@MDPC0234 ~/github/SaitoMinori/potential-tribble/rails_work (master) 
sudo gem install bundler
export PATH="$HOME/.rbenv/bin:$PATH"
echo $PATH | tr : "\n"
rbenv init

# 端末を開き直す
minorisaito@MDPC0234 ~/github/SaitoMinori/potential-tribble/rails_work (master) 
$ curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
Checking for `rbenv` in PATH: /usr/bin/rbenv
Checking for rbenv shims in PATH: OK
Checking `rbenv install` support: not found  # not foundでOK
$ git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
$ curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
Checking for `rbenv` in PATH: /usr/bin/rbenv
Checking for rbenv shims in PATH: OK
Checking `rbenv install` support: /home/minorisaito/.rbenv/plugins/ruby-build/bin/rbenv-install (ruby-build 20191111)
# ubuntu
$ sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev
$ rbenv install 2.6.5 # 最新版
$ rbenv versions
  system
* 2.6.5 (set by /home/minorisaito/.rbenv/version)
# system になっているとき
# $ rbenv global 2.6.5
$ rails new scaf_test
$ cd scaf_test/
$ bundle install
$ rails s
# エラー出たら 一度Gemfile.lockを消してみるとか。。。
$ rm Gemfile.lock
$ rbenv rehash
$ bundle install
$ rails s
⇒ これでうまく行った。
# その他試したコマンド
$ bundle install --path vendor/cache

$ gem install rubygems-bundler
$ gem regenerate_binstubs

$ bundle update rake
$ bundle update
```
※ Gemfileに追記
```bash
$ vi Gemfile
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.3.6'

gem 'therubyracer'
```

# 確認

```bash
$ rails generate scaffold User name:string email:string phone:string
$ rake db:migrate
$ rails s

# http://localhost:3000/users
```
