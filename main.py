import minhasFunctions as mfc
import datetime
from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)

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
    if receita == None:
        return redirect(url_for('entry_page'))
    else:
        return render_template('receitas.html', the_recipee= receita)
  
@app.route('/adicionar_receita', methods=['GET', 'POST'])
def addReceita() -> 'html':
        return render_template('addReceita.html')

@app.route('/salvar_receita', methods=['POST'])
def salvarReceita() -> 'html':
        nome = request.form['nome']
        custo = request.form['custo']
        modoPreparo = request.form['modoPreparo']
        descricao = request.form['descricao']
        foto = request.form['foto']
        ingredientes = []
        i = 0
        while True:
            try:
                dicto = {"nome": request.form['ingt.'+str(i)],"qtd": request.form['qtd.'+str(i)]}
                ingredientes.append(dicto)
                i+= 1
            except KeyError:
                break
        mfc.salvarReceita(nome= nome, custo= custo, modoPreparo= modoPreparo, descricao= descricao, foto= foto, ingredientes= ingredientes)
        return redirect(url_for('entry_page'))

if __name__ == '__main__':
    app.run(debug=True)
