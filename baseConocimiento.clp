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

(deftemplate DatosIngresados
	(slot cedulas
		(type STRING)
		(default ?DERIVE)
	)
)

(deftemplate existeEstudiante
	(slot cedulas
		(type STRING)
		(default ?DERIVE)
	)
)

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

(deftemplate NotasIgua70 
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

(deftemplate NotasMay85 
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



(deftemplate RecoPro 
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
(defrule matTuto
	(materia (codigo ?cm) (nombre ?nm) (tutoria ?tm))
=>
	(if  (= 1 ?tm) then
		(assert(materiaTutoria (codigo ?cm) (nombre ?nm) (tutoria ?tm) ))
	else
		(printout t "No puede ser tutor, la materia no existe para tutorias" crlf) 
	)
)



(defrule existetss
	(DatosIngresados (cedulas ?cxd))
	(estudiante (cedula ?cx))
=>
	(if (= 0 (str-compare ?cx ?cxd)) then
		(assert (existeEstudiante (cedulas ?cx)))
	else
		(printout t "No hay coincidencia" crlf)
	)
)



(defrule NotMen70
	(materiaTutoria (codigo ?cm) (nombre ?nm) (tutoria ?tm))
	(notas (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp))
	(test
		(= ?cmn ?cm)
	)
=>
	(if (< ?nn 70) then
		(printout t "Te Recomendamos asistir a tutorias de verano " crlf)
	else
		(assert (NotasMay70 (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp)))
	)
)





(defrule NotIgua70
	(NotasMay70 (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp))
=>
	(if (= ?nn 70 ) then
		(assert (NotasIgua70 (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp)))
	else
		(printout t "Te Recomendamos asistir a tutorias de verano " crlf)
	)
)









(defrule NotMay85
	(NotasMay70 (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp))
=>
	(if (> ?nn 85 ) then
		(assert (NotasMay85 (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp)))
	else
		(assert (RecoPro (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp)))
	)
)