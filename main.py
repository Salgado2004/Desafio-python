import minhasFunctions as mfc
import datetime
from flask import Flask, render_template, request, session, redirect, url_for

app = Flask(__name__)
# Set the secret key to some random bytes. Keep this really secret!
app.secret_key = 'aihfisdjfewsue'

@app.errorhandler(404)
def page_not_found(error):
    return render_template('404Error.html'), 404
  
@app.route('/', methods=['POST', 'GET'])
def entry_page() -> 'html':
    menu = mfc.getmenu()
    depoimentos = mfc.getTestimonials()
    indices = mfc.destaques()
    return render_template('restaurantHome.html', 
                            the_menu = menu, 
                            the_testimonials = depoimentos, 
                            destaques= indices)

@app.route('/contate-nos', methods=['POST'])
def contactMsg() -> 'html':
    nome = request.form["nome"]
    email = request.form["email"]
    msg = request.form["msg"]
    date = datetime.datetime.now()
    data = str(date.year)+'-'+str(date.month)+'-'+str(date.day)
    mfc.getMsg(fnome = nome, femail = email, fmsg = msg, fdata= data)
    return redirect(url_for('entry_page'))

@app.route('/receitas', methods=['GET'])
def getReceita() -> 'html':
    idReceita = request.args.get('id')
    if idReceita == None:
        return redirect(url_for('entry_page'))
    receita = mfc.receita(idReceita)
    return render_template('receitas.html', the_recipee= receita)
  
if __name__ == '__main__':
    app.run(debug=True)
