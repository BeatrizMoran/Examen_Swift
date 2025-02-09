//
//  main.swift
//  ejer16
//
//  Created by  on 3/2/25.
//

/**
 # Sistema de calificaciones

 Diseña una clase `Estudiante` con propiedades como `nombre`, `edad`, y `calificaciones`. Implementa métodos para agregar calificaciones, calcular el promedio y determinar si el estudiante pasa o no.

 */

import Foundation


class Estudiante{
    var nombre: String
    var edad: Int
    var calificaciones: [Int]
    
    init(nombre: String, edad: Int, calificaciones: [Int]) {
        self.nombre = nombre
        self.edad = edad
        self.calificaciones = calificaciones
    }
    
    func agregarCalificaciones(nota: Int){
        calificaciones.append(nota)
    }
    
    func calcularPromedio()->Int{
        var suma = 0
        for nota in calificaciones{
            suma += nota
        }
        var totalNotas = self.calificaciones.count
        return suma / totalNotas
    }
    
    func comprobarAprobado()->Bool{
        var promedio = calcularPromedio()
        if promedio > 5{
            return true
        }
        else{
            return false
        }
    }
    
    func mostrarCalificaciones(){
        var notas = "Calificaciones:\n"
        for nota in calificaciones{
            notas += String(nota) + "\n"
        }
        print(notas)
    }
    
}

var estudianteUno = Estudiante(nombre: "Pepe", edad: 18, calificaciones: [1,5,6])

estudianteUno.mostrarCalificaciones()
estudianteUno.agregarCalificaciones(nota: 3)
estudianteUno.mostrarCalificaciones()

var promedio = estudianteUno.calcularPromedio()
print("El promedio de " + estudianteUno.nombre + "es: " + String(promedio))

var aprobado = estudianteUno.comprobarAprobado()

if aprobado {
    print("El estudiante pasa de curso")
}
else{
    print("EL estudiante no pasa de curso")
}


var estudianteDos = Estudiante(nombre: "Paco", edad: 18, calificaciones: [8,5,6])

 aprobado = estudianteDos.comprobarAprobado()

if aprobado {
    print("El estudiante pasa de curso")
}
else{
    print("EL estudiante no pasa de curso")
}
