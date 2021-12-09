

import traceback
import clips, os
from clips.classes import Classes, Instance, instance_pp_string
from flask import Flask, render_template, request
from clips.common import CLIPSError
from types import MethodType
from flask.templating import Environment
from flask.wrappers import Request


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


@app.route('/contacto', methods=['GET','POST'])
def contacto():
    try:
        env.load('BaseConocimiento.clp') 
        env._classes.load_instances('Estudiante.clp')
        env.reset
        env.run() 
        listInstancias = env._classes.instances()
        print(listInstancias[''])
       

        if request.method == 'GET':
            #return render_template('formulario.html')
            #POST form
            #GET args
            codigo = request.args.get('codigo', default=-1, type=int)
            cedula = request.args.get('cedula', default='999999999',type=str)
            nombre = request.args.get('nombre', default='vacio',type=str)
            apellido = request.args.get('apellido', default='vacio',type=str)
            ciclo = request.args.get('ciclo', default=-1, type=int)
            #return str(codigo)+ "  " + cedula + "  " + nombre +"  "+ apellido + "  " + str(ciclo)
            #clase = env._classes.find_class('Estudiante')
            #instancias = clase.make_instance(codigo=codigo, cedula=cedula, nombre=nombre, apellido=apellido, ciclo=ciclo)
           
                
            return render_template('formulario.html', resultadoCarga ='Exitoso', estado =True) 
        return render_template('formulario.html', resultadoCarga ='Exitoso', estado =True) 
        #return render_template('formulario.html')   
    except Exception:    
        traceback.print_exc()
        #return render_template('formulario.html')    

app.run(debug=True, port=8000)
