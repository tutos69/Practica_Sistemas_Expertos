

import traceback
import clips
from flask import Flask, render_template


app = Flask(__name__)
env = clips.Environment()

@app.route('/')
def indice():
    return render_template('Index.html')

@app.route('/tutorias')
def tutorias():
    return render_template('tutorias.html')

@app.route('/tutores')
def tutores():
    return render_template('Tutores.html')

@app.route('/horarios')
def horarios():
    return render_template('Horarios.html')


@app.route('/beneficios')
def beneficios():
    return render_template('Beneficios.html')

@app.route('/reglamento')
def reglamento():
    return render_template('Reglamento.html')

@app.route('/tepes')
def tepes():
    return render_template('Tepes.html')

@app.route('/conocemos')
def conocemos():
    return render_template('AcercaDe.html')


@app.route('/contacto')
def contacto():
    try:
        env.load('BaseConocimiento.clp')
        return render_template('formulario.html') 
    except Exception:    
        traceback.print_exc()
        #return render_template('formulario.html')     
app.run(debug=True, port=8000)
