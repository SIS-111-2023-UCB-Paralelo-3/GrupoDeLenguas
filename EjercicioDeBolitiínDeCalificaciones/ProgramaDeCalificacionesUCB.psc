Algoritmo ProgramaDeCalificacionesUCB
	Definir nombreApellido, materia, gestión, docente, sede, carnetDeIdentidad, correoInstitucional Como Caracter
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
	Escribir "Especifique la materia, gestión y sede."
	Leer materia, gestión, sede
	Definir faltasInjustificadas Como Entero
	Escribir "Ingrese el número de faltas de asistencia del estudiante sin justificar."
	Leer faltasInjustificadas
	Si faltasInjustificadas>7 Entonces
		Imprimir "El estudiante reprobó la materia de " materia " por exceder el límite de clases ausentes sin justificar."
	SiNo
		Definir notaEvaluaciónContinua, notaPrácticoEnCasa, notaExámenesEscritos, notaDefensaProyectoSocial, notaSeguimientoProyectoGrupalSocial, notaProyectosYPrácticosEnClase, notaPuntualidad, notaCooperación Como Real
		Imprimir "Introduzca las notas de la evalución continua, por favor."
		Escribir "Prácticos en casa (sobre 10 puntos):"
		Leer notaPrácticoEnCasa
		Escribir "Exámenes escritos (sobre 30 puntos):"
		Leer notaExámenesEscritos
		Escribir "Defensa del proyecto grupal social (sobre 20 puntos):"
		Leer notaDefensaProyectoSocial
		Escribir "Seguimiento del proyecto grupal social (sobre 20 puntos):"
		Leer notaSeguimientoProyectoGrupalSocial
		Escribir "Proyectos y prácticos en clase (sobre 10 puntos):"
		Leer notaProyectosYPrácticosEnClase
		Escribir "Puntualidad (sobre 5 puntos):"
		Leer notaPuntualidad
		Escribir "Cooperación (sobre 5 puntos):"
		Leer notaCooperación
		notaEvaluaciónContinua = notaPrácticoEnCasa + notaExámenesEscritos + notaDefensaProyectoSocial + notaSeguimientoProyectoGrupalSocial + notaProyectosYPrácticosEnClase + notaPuntualidad + notaCooperación
		Si notaEvaluaciónContinua>=60 Entonces
			Imprimir "El promedio de la evaluación continua del estudiante es de " notaEvaluaciónContinua " .Está habilitado para rendir el examen final."
			Definir respuesta Como Entero
			Escribir "¿El estudiante optó por tomar las dos instancias para el examen final? Si es así, escriba 1, por favor. De lo contrario, escriba 0."
			Leer respuesta
			Si respuesta=1 Entonces
				Definir notaExamenFinal, promedioFinal Como Real
				Escribir "Introduzca la nota del examen final, por favor."
				Leer notaExamenFinal
				promedioFinal=(notaEvaluaciónContinua+notaExamenFinal) / 2
				Si promedioFinal>=51 Entonces
					Imprimir "El promedio final del estudiante es de " promedioFinal " .Aprobó la materia de " materia
				SiNo
					Imprimir "La nota del examen final no genera el promedio mínimo para aprobar la materia, por lo que el estudiante es habilitado automáticamente a rendir la 2da instancia del examen final."
					Definir notaSegundaInstancia Como Real
					Escribir "Introduza la nota de la 2da instancia del examen final, por favor."
					Leer notaSegundaInstancia
					promedioFinal=(notaEvaluaciónContinua + notaSegundaInstancia) / 2
					Si promedioFinal>=51 Entonces
						Imprimir "El promedio final del estudiante es de " promedioFinal " .Aprobó la materia de " materia
					SiNo
						Imprimir "El promedio final del estudiante es de " promedioFinal " .Reprobó la materia de " materia
					Fin Si
				Fin Si
			SiNo
				Definir notaExamenFinal, promedioFinal Como Real
				Escribir "Introduzca la nota del examen final, por favor."
				Leer notaExamenFinal
				promedioFinal=(notaEvaluaciónContinua+notaExamenFinal) / 2
				Si promedioFinal>=51 Entonces
					Imprimir "El promedio final del estudiante es de " promedioFinal " .Aprobó la materia de " materia
				SiNo
					Imprimir "El promedio final del estudiante es de " promedioFinal " .Reprobó la materia de " materia
				Fin Si
			Fin Si
		SiNo
			Imprimir "El promedio de la evaluación continua del estudiante es de " notaEvaluaciónContinua " .No está habilitado para rendir el examen final, por lo que reprobó la materia de " materia
		Fin Si
	FinSi
FinAlgoritmo

