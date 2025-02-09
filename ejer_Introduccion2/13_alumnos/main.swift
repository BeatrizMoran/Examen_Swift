/*
# Alumnos

Disponemos de los siguientes grupos de alumnos:

![](grupos.png)

Utilizándolos como referencia, haz un programa que haga las siguientes tareas:

- Mostrar, por separado, los alumnos matriculados en primero, segundo o tercero.
- Mostrar los alumnos repetidores de primero.
- Mostrar los alumnos que están cursando alguna asignatura de primero por segunda vez.
- Mostrar los alumnos que solo están matriculados en asignaturas de segundo.
- Mostrar los alumnos que estén matriculados en segundo y además tengan algo de primero o de tercero.
- Mostrar todos los alumnos del ciclo.

*/

import Foundation

let primero: Set<String> = ["Leire", "Egoitz", "Luis", "Alfonso", "María"]
let repetidores: Set<String> = ["Luis", "Alfonso"]
let segundo: Set<String> = ["Laura", "Aritz", "Gorka", "Raúl", "Rubén"]
let tercero: Set<String> = ["Luis", "Juan", "Unai", "Amaia"]

print("Alumnos matriculados en primero: \(primero.sorted())")
print("Alumnos matriculados en segundo: \(segundo.sorted())")
print("Alumnos matriculados en tercero: \(tercero.sorted())")

print("Alumnos repetidores de primero: \(repetidores.sorted())")

let primeroPorSegundaVez = primero.intersection(segundo)
print("Alumnos cursando asignaturas de primero por segunda vez: \(primeroPorSegundaVez.sorted())")

let soloSegundo = segundo.subtracting(primero).subtracting(tercero)
print("Alumnos solo matriculados en asignaturas de segundo: \(soloSegundo.sorted())")

let segundoYPrimeroOTercero = segundo.intersection(primero.union(tercero))
print("Alumnos matriculados en segundo y además en primero o tercero: \(segundoYPrimeroOTercero.sorted())")

let todosLosAlumnos = primero.union(segundo).union(tercero)
print("Todos los alumnos del ciclo: \(todosLosAlumnos.sorted())")
