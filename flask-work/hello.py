from flask import Flask, render_template
import pymysql  # 追加

from work import admin

app = Flask(__name__)
app.register_blueprint(admin)


@app.route('/hello')
def hello():
    # name = "Hello World"
    # return name
    name = "Hoge"
    return render_template('hello.html', title='flask test', name=name)  # 変更
    # http://127.0.0.1:5000/hello


@app.route("/hello/<whom>/<whom2>")
def hello_whom2(whom, whom2):
    return render_template("work.html", whom=whom, whom2=whom2)
    # http://127.0.0.1:5000/hello/world


@app.route("/hello/<whom>")
def hello_whom(whom):
    return f"<h1>helloooo {whom}</h1>"
    # http://127.0.0.1:5000/hello/world


@app.route("/100_plus/<int:n>")
def adder(n):
    return f"<h2>100 + {n} = {100+n}</h2>"
    # http://127.0.0.1:5000/100_plus/400


# おまじない
if __name__ == "__main__":
    app.run(debug=True, port=5050)
