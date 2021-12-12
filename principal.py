
from types import MethodType
from flask.templating import Environment
from flask.wrappers import Request
import clips
from clips import Environment
import traceback
from flask import Flask, render_template, request


app = Flask(__name__)
envi = clips.Environment()

dato = 0


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
    return render_template('formulario.html')


@app.route('/prueba')
def prueba():
    return render_template('prueba.html')


@app.route('/estudiantes', methods=['GET', 'POST'])
def Estudiantes():
    try:
        if request.method == 'POST':
            #codigo = request.args.get('codigo', default=-1, type=int)
            cedula = request.form.get('cedula', default='999999999',type=str)
            #nombre = request.form.get('nombre', default='vacio',type=str)
            #apellido = request.form.get('apellido', default='vacio',type=str)
            #ciclo = request.form.get('ciclo', default=-1, type=int)
            #return str(codigo)+ "  " + cedula + "  " + nombre +"  "+ apellido + "  " + str(ciclo)
            tem = envi._facts.find_template('DatosIngresados')
            hecho = tem.assert_fact(cedulas=cedula)
            envi.run()
            print('Holas')
            for c in envi._facts.facts():
                if c.template.name == 'DatosIngresados':
                    print(c)
            
            return render_template('Estudiantes.html', contador='<h1>hola</h1>')
        else:
            envi.load('baseConocimiento.clp')
            envi._facts.load_facts('Estudiantes.clp')
        return render_template('Estudiantes.html', contador=0)
    except Exception:
        traceback.print_exc()

    # return render_template('Estudiantes.html')




app.run(debug=True, port=8000)
# comentarios
