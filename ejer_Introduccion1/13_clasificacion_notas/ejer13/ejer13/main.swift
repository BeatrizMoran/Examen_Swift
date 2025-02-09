//
//  main.swift
//  ejer13
//
//  Created by  on 27/1/25.
//

/**
 # Clasificación de alumnos

 Dado un diccionario con nombres de estudiantes y sus notas, crea una lista con los aprobados (nota mayor o igual a 5) y otra con los suspensos.

 */
import Foundation


let estudiantes: [String: Int] = [
    "Ana": 8,
    "Luis": 4,
    "Carlos": 6,
    "María": 3,
    "Pedro": 7,
    "Lucía": 5
]

var aprobados = [String]()
var suspendidos = [String]()

for estudiante in estudiantes{
    if estudiante.value >= 5{
        aprobados.append(estudiante.key)
    }
    else{
        suspendidos.append(estudiante.key)
    }
}

print("Aprobados: ", aprobados)
print("Suspendidos: ", suspendidos)
