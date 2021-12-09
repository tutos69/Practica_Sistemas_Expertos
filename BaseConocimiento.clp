(defclass materia (is-a USER)
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
	(slot tutoria
		(type INTEGER)
		(range 0 1)
		(default 0)
	)
)

(defclass Persona (is-a USER)
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
	(multislot Apellido
		(type STRING)
		(default ?DERIVE)
		(cardinality 1 2)
	)
)


(defclass Estudiante (is-a Persona)
	(slot ciclo
		(type INTEGER)
		(range 0 10)
		(default 0)	
	)
)

(defclass Profesor (is-a Persona)
	(slot Sueldo
		(type INTEGER)
		(range 0 10)
		(default 0)	
	)
)

(defclass notas (is-a USER)
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
		(type STRING)
		(default ?DERIVE)
	)
	(slot codCarrera
		(type INTEGER)
		(range 0 100000)
		(default 0)
	)
	(slot Nota
		(type INTEGER)
		(range 0 100)
		(default 0)
	)

)

(defclass Carrera(is-a USER)
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


;(load-instances "C:/Users/Adrian/Documents/UPS/Ciclo_06/Sistemas Expertos/inte/Estudiantes.clp")