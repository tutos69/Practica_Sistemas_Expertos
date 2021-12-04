


from flask import Flask, render_template


app = Flask(__name__)
@app.route('/')
def indice():
    return render_template('Index.html')

@app.route('/Tutores.html')
def indice():
    return render_template('Tutores.html')


app.run(debug=True, port=8000)
