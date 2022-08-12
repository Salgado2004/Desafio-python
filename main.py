from flask import Flask, render_template, request, session, redirect, url_for

app = Flask(__name__)
# Set the secret key to some random bytes. Keep this really secret!
app.secret_key = 'aihfisdjfewsue'

@app.errorhandler(404)
def erro404(error):
    return render_template('404Error.html'), 404
  
@app.route('/', methods=['POST', 'GET'])
def entry_page() -> 'html':
    return render_template('restaurantHome.html')

@app.route('/contate-nos', methods=['POST'])
def contactMsg() -> 'html':
    nome = request.form["nome"]
    email = request.form["email"]
    msg = request.form["msg"]
    date = datetime.datetime.now()
    data = str(date.year)+'-'+str(date.month)+'-'+str(date.day)
    mfc.getMsg(fnome = nome, femail = email, fmsg = msg, fdata= data)
    return redirect(url_for('entry_page'))
  
if __name__ == '__main__':
    app.run(debug=True)
