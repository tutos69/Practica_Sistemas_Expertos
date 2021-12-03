

import re
from flask import Flask, app


app = Flask(__name__)
@app.route('/')
def indice():
    return '<h1>Hola mundo</h1>'