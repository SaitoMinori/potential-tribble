from flask import Blueprint, request, Markup

admin = Blueprint('admin', __name__)


@admin.route('/good')
def good():
    name = "Good"
    return name


@admin.route('/index')
def index():
    html = '''
    <form action="/test">
        <p><label>test: </label>
        <textarea name="kanso" rows="4" cols="40">ここに感想を記入してください。</textarea><br>
        <input type="text" name="hoge" value="default">
        <button type="submit" formmethod="get">GET</button>
        <button type="submit" formmethod="post">POST</button></p>
    </form>
    '''
    return Markup(html)


@admin.route('/test', methods=['GET', 'POST'])
def test():
    try:
        if request.method == 'POST':
            return request.form['kanso']
        else:
            return request.args.get('hoge', '')
    except Exception as e:
        return str(e)
