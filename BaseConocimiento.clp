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
