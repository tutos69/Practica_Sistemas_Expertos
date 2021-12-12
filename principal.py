
from types import MethodType
from flask.templating import Environment
from flask.wrappers import Request
import clips
from clips import Environment
import traceback
from flask import Flask, render_template, request


app = Flask(__name__)
envi = clips.Environment()
estado = False

dato = 0


@app.route('/')
def indice():
    return render_template('Inicio.html')


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


@app.route('/prueba', methods=['GET', 'POST'])
def prueba():
    if request.method == 'POST':
        codigo = request.args.get('codigo', default=-1, type=int)
        cedula = request.form.get('cedula', default='999999999',type=str)
        nombre = request.form.get('nombre', default='vacio',type=str)
        apellido = request.form.get('apellido', default='vacio',type=str)
        ciclo = request.form.get('ciclo', default=-1, type=int)
        materia = request.form.get('materia',type=int)
        nota = request.form.get('nota', default=0, type=int)
        recomeprofe =  request.form.get('RecomeProfe',type=int)
        recomeAnima =  request.form.get('RecomeAnima',type=int)
        recomeDirec =  request.form.get('RecomeDirec',type=int)
        darClase =  request.form.get('DarClase',type=int)
        quiereTutor = request.form.get('quiereTutor', type=int)
        hasEnse = request.form.get('hasEnse',type=int)
        esTuror = request.form.get('esTuror', type=int)
        participar = request.form.get('participar',type=int)
        ayuda = request.form.get('ayuda',type=int)
        #return str(codigo)+ "  " + cedula + "  " + nombre +"  "+ apellido + "  " + str(ciclo)
        tem = envi._facts.find_template('DatosIngresados')
        print(codigo,cedula,nombre,apellido)
        hecho = tem.assert_fact(codigo=codigo,cedulas=cedula,nombre=nombre,apellido=apellido,ciclo=ciclo,materia=materia,Nota=nota,recomeprofe=recomeprofe,recomeAnima=recomeAnima,recomeDirec=recomeDirec,darClase=darClase)
        envi.run()
        #print('Holas')
        for c in envi._facts.facts():
            #if c.template.name == 'noExisteEstudiante':
            print(c)
       # print('holas')
        #print(materia)
        return render_template('prueba.html', contador='<h1>hola</h1>')
    else:    
        return render_template('prueba.html')


@app.route('/estudiantes')
def Estudiantes():
    try:
        if estado == False:
            envi = clips.Environment()
            envi.load('baseConocimiento.clp')
            envi._facts.load_facts('Estudiantes.clp')
            envi._facts.load_facts('Materia.clp')
            return render_template('Estudiantes.html', estado=True)
        else:
            print('gola')
           # envi.reset()
            return render_template('Estudiantes.html')
    except Exception:
        traceback.print_exc()

    # return render_template('Estudiantes.html')




app.run(debug=True, port=8000)
# comentarios
