from flask import Flask, render_template, request, session, redirect, url_for

app = Flask(__name__)
# Set the secret key to some random bytes. Keep this really secret!
app.secret_key = 'aihfisdjfewsue'

@app.errorhandler(404)
def erro404(error):
    return render_template('GerenciadorErro.html',
                            the_msg = "Opa! Essa página não existe :/",
                            the_erro = "404"), 404

@app.errorhandler(400)
def erro400(error):
    return render_template('GerenciadorErro.html',
                            the_msg = "Opa! Parece que falta alguma coisa no seu código :/",
                            the_erro = "400"), 400

@app.errorhandler(405)
def erro405(error):
    return render_template('GerenciadorErro.html',
                            the_msg = "Opa! O método utilizado para acessar essa página não é válido :/",
                            the_erro = "405"), 405
  
@app.route('/')
def entry_page() -> 'html':
    return render_template('index.html')
  
if __name__ == '__main__':
    app.run(debug=True)
