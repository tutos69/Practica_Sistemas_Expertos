


from flask import Flask, render_template


app = Flask(__name__)
@app.route('/')
def indice():
    return render_template('Index.html')

