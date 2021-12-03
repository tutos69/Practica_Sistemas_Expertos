

import re
from flask import Flask, app


app = Flask(__name__)
@app.route('/')
def indice():
    return '<h1>Hola mundo como estas </h1>'

if __name__=='__main__':
    app.run(debug=True)

