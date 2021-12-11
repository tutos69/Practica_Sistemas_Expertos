(deftemplate materia 
	(slot codigo
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(multislot nombre
		(type STRING)
		(default ?DERIVE)
	)
	(slot tutoria
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
)

(deftemplate estudiante 
	(slot codigo
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(slot cedula
		(type STRING)
		(default ?DERIVE)
	)
	(multislot nombre
		(type STRING)
		(default ?DERIVE)
		(cardinality 1 2)
	)
	(multislot apellido
		(type STRING)
		(default ?DERIVE)
		(cardinality 1 2)
	)
	(slot ciclo
		(type INTEGER)
		(range 0 10)
		(default 0)	
	)
)

(deftemplate profesor 
	(slot codigo
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(slot cedula
		(type STRING)
		(default ?DERIVE)
	)
	(multislot nombre
		(type STRING)
		(default ?DERIVE)
		(cardinality 1 2)
	)
	(multislot apellido
		(type STRING)
		(default ?DERIVE)
		(cardinality 1 2)
	)
	(slot sueldo
		(type FLOAT)
		(default 0.0)
		(range 0.0 10000000.0)
	)
)

(deftemplate notas 
	(slot codigo
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(slot codEstud
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(slot codprofe
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(slot materia
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(slot codCarrera
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(slot Nota
		(type INTEGER)
		(range 0 101)
		(default 0)
	)
)


(deftemplate carrera
	(slot codigo
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(multislot nombre
		(type STRING)
		(default ?DERIVE)
		(cardinality 1 2)
	)
)
;Template Regla1
(deftemplate materiaTutoria 
	(slot codigo
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(multislot nombre
		(type STRING)
		(default ?DERIVE)
	)
	(slot tutoria
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
)


;Regla1
(defrule matTuto
	(materia (codigo ?cm) (nombre ?nm) (tutoria ?tm))
=>
	(if  (= 1 ?tm) then
		(assert(materiaTutoria (codigo ?cm) (nombre ?nm) (tutoria ?tm) ))
	else
		(printout t "No puede ser tutor, la materia no existe para tutorias" crlf) 
	)
)

;Template Regla2 

(deftemplate NotasMay70 
	(slot codigo
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(slot codEstud
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(slot codprofe
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(slot materia
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(slot codCarrera
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(slot Nota
		(type INTEGER)
		(range 0 101)
		(default 0)
	)
)

;Regla 2
(defrule NotMen70
	(materiaTutoria (codigo ?cm) (nombre ?nm) (tutoria ?tm))
	(notas (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp))
	(test
		(= ?cmn ?cm)
	)
=>
	(if (< 70 ?nn) then
		(printout t "Te Recomendamos asistir a tutorias de verano " crlf)
	else
		(assert (NotasMay70 (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp)))
	)
)




;(load "C:/Users/Adrian/Documents/Practica/Practica_Sistemas_Expertos/BaseConocimiento.clp")
;(load-facts "C:/Users/Adrian/Documents/Practica/Practica_Sistemas_Expertos/Materia.clp")
;(load-facts "C:/Users/Adrian/Documents/Practica/Practica_Sistemas_Expertos/Carrera.clp")
;(load-facts "C:/Users/Adrian/Documents/Practica/Practica_Sistemas_Expertos/Profesor.clp")
;(load-facts "C:/Users/Adrian/Documents/Practica/Practica_Sistemas_Expertos/Notas.clp")
;(load-facts "C:/Users/Adrian/Documents/Practica/Practica_Sistemas_Expertos/Estudiante.clp")