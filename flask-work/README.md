# potential-tribble

### 参考

＊ クイックスタート

    ・ https://a2c.bitbucket.io/flask/quickstart.html

    ・ https://qiita.com/zaburo/items/5091041a5afb2a7dffc8

＊ GET・PORT について

    ・ https://qiita.com/SKYS/items/e4c62d7de015574e6db6

* TODOリスト

    ・ https://www.atmarkit.co.jp/ait/series/10063/

    ・http://todomvc.com/

* telnet

    ・ https://qiita.com/honeycom/items/d44590dd27d5dccb4b5a



### terminal
```bash
# 自動リロードしれくれるコマンド
FLASK_APP=hello.py FLASK_DEBUG=1 python -m flask run

# デバックモードを入れていれば以下のコマンドでも自動リロードしれくれる
python hello.py
```

### 確認

・ http://127.0.0.1:5000/

・ http://127.0.0.1:5000/hello

・ http://127.0.0.1:5000/user/SaitoMinori

・ http://127.0.0.1:5000/post/5000


### telnet 
```bash
telnet localhost 5000 
# /good は適宜変更する
GET /good HTTP/1.1
# 戻り値が http://127.0.0.1:5000/good の検証→network→Response Header(view source)と一致する！
```

### Flask-SQLAlchemy
```bash
# ターミナルで
flask shell
>>> from app import db
>>> db
<SQLAlchemy engine=sqlite:////home/minorisaito/github/SaitoMinori/potential-tribble/db/sample.db>
# ⇒これが出ればエンジンが設定できてる

# db ディレクトリを作っておく！sample.db ファイルはなくてOK
>>>db.create_all()
>>>exit()
$ cd db
$ sqlite3 sample.db
sqlite> select * from todoitems;
sqlite> .exit
```

```bash
# hello.htmlに追加
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

# 検証 したのターミナルで実行
foo = $(".hoho")
foo.text()
foo.text("jjj")
```
