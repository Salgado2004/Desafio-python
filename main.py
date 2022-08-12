from flask import Flask, render_template, request, session, redirect, url_for

app = Flask(__name__)
# Set the secret key to some random bytes. Keep this really secret!
app.secret_key = 'aihfisdjfewsue'

@app.errorhandler(404)
def erro404(error):
    return render_template('404Error.html'), 404
  
@app.route('/', methods=['POST'])
def entry_page() -> 'html':
    return render_template('restaurantHome.html')
  
if __name__ == '__main__':
    app.run(debug=True)
