(defrule imprimir
	(object (is-a estudiante) (nombre $?n) (codigo ?c))
=>

	(printout t $?n " "crlf)
)
