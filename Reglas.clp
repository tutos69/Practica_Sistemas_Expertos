
Regla 1

(defrule matTuto
	(materia (codigo ?cm) (nombre ?nm) (tutoria ?tm))
=>
	(if  (= 1 ?tm) then
		(assert(materiaTutoria (codigo ?cm) (nombre ?nm) (tutoria ?tm) ))
	else
		(printout t "No puede ser tutor, la materia no existe para tutorias" crlf) 
	)
)


Regla 2

(defrule NotMen70
	(materia (codigo ?cm) (nombre ?nm) (tutoria ?tm))
	(notas (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp))
	(test
		(= ?cmn ?cm)
	)
=>
	(if (< ?nn 70 ) then
		(printout t "Te Recomendamos asistir a tutorias de verano " crlf)
	else
		(assert (NotasMay70 (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp)))
	)
)

Regla 3

(defrule NotIgua70
	(NotasMay70 (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp))
=>
	(if (= ?nn 70 ) then
		(assert (NotasIgua70 (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp)))
	else
		(printout t "Te Recomendamos asistir a tutorias de verano " crlf)
	)
)

Regla 4

(defrule NotMay85
	(NotasMay70 (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp))
=>
	(if (> ?nn 85 ) then
		(assert (NotasMay85 (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp)))
	else
		(assert (RecoPro (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp)))
	)
)

Regla 5

(defrule RecomendacionProfesor
	 (RecoPro (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne) (codprofe ?cnp))
=>
	(if (> ?nn 85 ) then
		(assert (NotasMay85 (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne)))
	else
		(assert (RecoPro (codigo ?cn) (materia ?cmn) (Nota ?nn) (codEstud ?cne)))
	)
)
