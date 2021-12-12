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
	(slot codigo
		(type INTEGER)
		(range -1 100000)
		(default 0)
	)
	(slot cedulas
		(type STRING)
		(default ?DERIVE)
	)
	(slot nombre
		(type STRING)
		(default ?DERIVE)
		
	)
	(slot apellido
		(type STRING)
		(default ?DERIVE)
		
	)
	(slot ciclo
		(type INTEGER)
		(range 0 10)
		(default 0)	
	)
	(slot materia
		(type INTEGER)
		(range 0 11)
		(default 0)
	)
	(slot Nota
		(type INTEGER)
		(range 0 101)
		(default 0)
	)
	(slot recomeprofe
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeAnima
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeDirec
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot darClase
		(type INTEGER)
		(range 0 1)
		(default 0)
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
	(slot cedulas
		(type STRING)
		(default ?DERIVE)
	)
	(slot Nota
		(type INTEGER)
		(range 0 101)
		(default 0)
	)
	(slot recomeprofe
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeAnima
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeDirec
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot darClase
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
)

(deftemplate NotasIgua70 
	(slot cedulas
		(type STRING)
		(default ?DERIVE)
	)
	(slot Nota
		(type INTEGER)
		(range 0 101)
		(default 0)
	)
	(slot recomeprofe
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeAnima
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeDirec
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot darClase
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
)



(deftemplate noExisteEstudiante
	(slot cedulas
		(type STRING)
		(default ?DERIVE)
	)
	(slot nombre
		(type STRING)
		(default ?DERIVE)
		
	)
	(slot apellido
		(type STRING)
		(default ?DERIVE)
		
	)
	(slot ciclo
		(type INTEGER)
		(range 0 10)
		(default 0)	
	)
	(slot materia
		(type INTEGER)
		(range 0 11)
		(default 0)
	)
	(slot Nota
		(type INTEGER)
		(range 0 101)
		(default 0)
	)
	(slot recomeprofe
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeAnima
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeDirec
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot darClase
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
)


(deftemplate gustaTutoria
	(slot cedulas
		(type STRING)
		(default ?DERIVE)
	)
	(slot Nota
		(type INTEGER)
		(range 0 101)
		(default 0)
	)
	(slot recomeprofe
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeAnima
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeDirec
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot darClase
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
)

(defrule existetss
	(DatosIngresados (cedulas ?cxd) (nombre ?ndi) (apellido ?adi) (materia ?mdi) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi))
	(estudiante (cedula ?cx) (nombre ?ne))
=>
	(if (= 0 (str-compare ?cx ?cxd)) then
		(printout t "holas" crlf)
	else
		(assert (noExisteEstudiante (cedulas ?cxd) (nombre ?ndi) (apellido ?adi) (materia ?mdi) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi)))
	)
)

(defrule matTuto
	(materia (codigo ?cm) (nombre ?nm) (tutoria ?tm))
	(noExisteEstudiante (cedulas ?cxd) (nombre ?ndi) (apellido ?adi) (materia ?mdi) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi))
	(test
		(= ?cm ?mdi)
	)
=>
	(if (= 1 ?tm) then
		(assert(materiaTutoria (codigo ?cm) (nombre ?nm) (tutoria ?tm) ))
	else
		(printout t "No puede ser tutor, la materia no es para tutorias" crlf) 
	)
)


(defrule NotMen70
	(materia (codigo ?cm) (nombre ?nm) (tutoria ?tm))
	(noExisteEstudiante (cedulas ?cxd) (Nota ?nodi) (materia ?mdi)  (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi))
	(test
		(= ?cm ?mdi)
	)
=>
	(if (< ?nodi 70) then
		(printout t "Te Recomendamos asistir a tutorias de verano " crlf)
	else
		(assert (NotasMay70 (cedulas ?cxd) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi) ))
	)
)


(defrule NotIgua70
	(NotasMay70 (cedulas ?cxd) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi) )
=>
	(if (= ?nodi 70 ) then
		(assert (NotasIgua70 (cedulas ?cxd) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi)))
	else
		(printout t "Te Recomendamos asistir a tutorias de verano " crlf)
	)
)

(deftemplate RecoPro 
	(slot cedulas
		(type STRING)
		(default ?DERIVE)
	)
	(slot Nota
		(type INTEGER)
		(range 0 101)
		(default 0)
	)
	(slot recomeprofe
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeAnima
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeDirec
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot darClase
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
)


(defrule NotMay85
	(NotasMay70 (cedulas ?cxd) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi) )
=>
	(if (> ?nodi 85 ) then
		(assert (gustaTutoria (cedulas ?cxd) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi)))
	else
		(assert (RecoPro (cedulas ?cxd) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi)))
	)
)

(deftemplate RecoAnima 
	(slot cedulas
		(type STRING)
		(default ?DERIVE)
	)
	(slot Nota
		(type INTEGER)
		(range 0 101)
		(default 0)
	)
	(slot recomeprofe
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeAnima
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeDirec
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot darClase
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
)

(defrule RecoPro
	(RecoPro (cedulas ?cxd) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi))
=>
	(if (= 1 ?rpdi) then
		(assert (gustaTutoria (cedulas ?cxd) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi)))
	else
		(assert (RecoAnima (cedulas ?cxd) (Nota ?nodi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi)))
	)  
)

(deftemplate RecoDirec
	(slot cedulas
		(type STRING)
		(default ?DERIVE)
	)
	(slot Nota
		(type INTEGER)
		(range 0 101)
		(default 0)
	)
	(slot recomeprofe
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeAnima
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot recomeDirec
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
	(slot darClase
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
)


(defrule RecoAnima
	(RecoPro (cedulas ?cxd) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi))
=>
	(if (= 1 ?radi) then
		(assert (gustaTutoria (cedulas ?cxd) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi)))
	else
		(assert (RecoDirec (cedulas ?cxd) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi)))
	) 
)

(defrule RecoDirec
	(RecoDirec (cedulas ?cxd) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi))
=>
	(if (= 1 ?rddi) then
		(assert (gustaTutoria (cedulas ?cxd) (Nota ?nodi) (recomeprofe ?rpdi) (recomeAnima ?radi) (recomeDirec ?rddi) (darClase ?dcdi)))
	else
		(printout t "No Puedeser Tutor" crlf)
	) 
)