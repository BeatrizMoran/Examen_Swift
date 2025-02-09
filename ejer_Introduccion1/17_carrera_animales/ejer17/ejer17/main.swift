//
//  main.swift
//  ejer17
//
//  Created by  on 3/2/25.
//

/**
 # Carrera de animales

 Define una clase base `Animal` con un método `correr()`. Crea subclases como `Tigre`, `Conejo`, y `Tortuga`, donde cada una sobrescriba el método para correr a diferentes velocidades. Simula una carrera entre ellos.

 */
import Foundation

class Animal{
    
    var nombre: String
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    func correr() -> Double{
        return 0.0
    }
}

class Tigre: Animal{
    override func correr() -> Double {
        return 80.0
    }
}

class Conejo: Animal{
    override func correr() -> Double{
        return 50.0
    }
}

class Tortuga: Animal{
    override func correr() -> Double {
        return 20.0
    }
}

let tigre = Tigre(nombre: "Tigre")
let conejo = Conejo(nombre: "Conejo")
let tortuga = Tortuga(nombre: "Tortuga")

let animales: [Animal] = [tigre, conejo, tortuga]

var resultados: [(String, Double)] = []

for animal in animales {
    let tiempo = 100.0 / animal.correr()  
    resultados.append((animal.nombre, tiempo))
}

let resultadosOrdenados = resultados.sorted { $0.1 < $1.1 }

print("Resultados de la carrera:")
for (nombre, tiempo) in resultadosOrdenados {
    print("\(nombre) corrió en \(String(format: "%.2f", tiempo)) segundos.")
}
