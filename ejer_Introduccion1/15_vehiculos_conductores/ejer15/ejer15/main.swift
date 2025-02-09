//
//  main.swift
//  ejer15
//
//  Created by  on 3/2/25.
//

/**
 # Vehículos y conductores

 Implementa una clase `Vehículo` con propiedades como `marca`, `modelo`, y `velocidad máxima`. Luego, diseña una clase `Conductor` que asocie un conductor con un vehículo y permita registrar el kilometraje.

 */

import Foundation

class Vehiculo {
    var marca: String
    var modelo: String
    var velocidadMaxima: Double
    
    init(marca: String, modelo: String, velocidadMaxima: Double) {
        self.marca = marca
        self.modelo = modelo
        self.velocidadMaxima = velocidadMaxima
    }
}

class Conductor {
    var vehiculo: Vehiculo
    var kilometraje: Double
    
    init(vehiculo: Vehiculo, kilometrajeInicial: Double = 0.0) {
        self.vehiculo = vehiculo
        self.kilometraje = kilometrajeInicial
    }
    
    func registrarKilometraje(kilometros: Double) {
        kilometraje += kilometros
    }
}

var vehiculoUno = Vehiculo(marca: "Ford", modelo: "Mustang", velocidadMaxima: 250)
var conductorUno = Conductor(vehiculo: vehiculoUno)

conductorUno.registrarKilometraje(kilometros: 50)

print("Kilometraje registrado: \(conductorUno.kilometraje) km")


