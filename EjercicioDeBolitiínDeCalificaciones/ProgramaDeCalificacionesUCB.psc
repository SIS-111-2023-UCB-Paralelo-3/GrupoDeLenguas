Algoritmo ProgramaDeCalificacionesUCB
	Definir nombreApellido, materia, gesti�n, docente, sede, carnetDeIdentidad, correoInstitucional Como Caracter
	Imprimir  "Datos generales del estudiante:"
	Escribir "Nombre completo:"
	Leer nombreApellido
	Escribir "Carnet de identidad:"
	Leer carnetDeIdentidad
	Escribir "Correo institucional:"
	Leer correoInstitucional
	Escribir "Nombre del docente:"
	Leer docente
	Imprimir "Otros datos:"
	Escribir "Especifique la materia, gesti�n y sede."
	Leer materia, gesti�n, sede
	Definir faltasInjustificadas Como Entero
	Escribir "Ingrese el n�mero de faltas de asistencia del estudiante sin justificar."
	Leer faltasInjustificadas
	Si faltasInjustificadas>7 Entonces
		Imprimir "El estudiante reprob� la materia de " materia " por exceder el l�mite de clases ausentes sin justificar."
	SiNo
		Definir notaEvaluaci�nContinua, notaPr�cticoEnCasa, notaEx�menesEscritos, notaDefensaProyectoSocial, notaSeguimientoProyectoGrupalSocial, notaProyectosYPr�cticosEnClase, notaPuntualidad, notaCooperaci�n Como Real
		Imprimir "Introduzca las notas de la evaluci�n continua, por favor."
		Escribir "Pr�cticos en casa (sobre 10 puntos):"
		Leer notaPr�cticoEnCasa
		Escribir "Ex�menes escritos (sobre 30 puntos):"
		Leer notaEx�menesEscritos
		Escribir "Defensa del proyecto grupal social (sobre 20 puntos):"
		Leer notaDefensaProyectoSocial
		Escribir "Seguimiento del proyecto grupal social (sobre 20 puntos):"
		Leer notaSeguimientoProyectoGrupalSocial
		Escribir "Proyectos y pr�cticos en clase (sobre 10 puntos):"
		Leer notaProyectosYPr�cticosEnClase
		Escribir "Puntualidad (sobre 5 puntos):"
		Leer notaPuntualidad
		Escribir "Cooperaci�n (sobre 5 puntos):"
		Leer notaCooperaci�n
		notaEvaluaci�nContinua = notaPr�cticoEnCasa + notaEx�menesEscritos + notaDefensaProyectoSocial + notaSeguimientoProyectoGrupalSocial + notaProyectosYPr�cticosEnClase + notaPuntualidad + notaCooperaci�n
		Si notaEvaluaci�nContinua>=60 Entonces
			Imprimir "El promedio de la evaluaci�n continua del estudiante es de " notaEvaluaci�nContinua " .Est� habilitado para rendir el examen final."
			Definir respuesta Como Entero
			Escribir "�El estudiante opt� por tomar las dos instancias para el examen final? Si es as�, escriba 1, por favor. De lo contrario, escriba 0."
			Leer respuesta
			Si respuesta=1 Entonces
				Definir notaExamenFinal, promedioFinal Como Real
				Escribir "Introduzca la nota del examen final, por favor."
				Leer notaExamenFinal
				promedioFinal=(notaEvaluaci�nContinua+notaExamenFinal) / 2
				Si promedioFinal>=51 Entonces
					Imprimir "El promedio final del estudiante es de " promedioFinal " .Aprob� la materia de " materia
				SiNo
					Imprimir "La nota del examen final no genera el promedio m�nimo para aprobar la materia, por lo que el estudiante es habilitado autom�ticamente a rendir la 2da instancia del examen final."
					Definir notaSegundaInstancia Como Real
					Escribir "Introduza la nota de la 2da instancia del examen final, por favor."
					Leer notaSegundaInstancia
					promedioFinal=(notaEvaluaci�nContinua + notaSegundaInstancia) / 2
					Si promedioFinal>=51 Entonces
						Imprimir "El promedio final del estudiante es de " promedioFinal " .Aprob� la materia de " materia
					SiNo
						Imprimir "El promedio final del estudiante es de " promedioFinal " .Reprob� la materia de " materia
					Fin Si
				Fin Si
			SiNo
				Definir notaExamenFinal, promedioFinal Como Real
				Escribir "Introduzca la nota del examen final, por favor."
				Leer notaExamenFinal
				promedioFinal=(notaEvaluaci�nContinua+notaExamenFinal) / 2
				Si promedioFinal>=51 Entonces
					Imprimir "El promedio final del estudiante es de " promedioFinal " .Aprob� la materia de " materia
				SiNo
					Imprimir "El promedio final del estudiante es de " promedioFinal " .Reprob� la materia de " materia
				Fin Si
			Fin Si
		SiNo
			Imprimir "El promedio de la evaluaci�n continua del estudiante es de " notaEvaluaci�nContinua " .No est� habilitado para rendir el examen final, por lo que reprob� la materia de " materia
		Fin Si
	FinSi
FinAlgoritmo

