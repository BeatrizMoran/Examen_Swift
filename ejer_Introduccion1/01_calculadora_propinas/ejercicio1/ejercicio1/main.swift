//
//  main.swift
//  ejercicio1
//
//  Created by Inés Larrañaga Fernández de Pinedo on 17/11/24.
//

import Foundation

print("Introduce el importe de la cuenta")
var precioCuenta = Double(readLine()!) ?? 0.0
print("Introduce el procentaje de la propina")

var propina = Double(readLine()!) ?? 0.0

var total: Double = CalcularPropina(precio: precioCuenta, porcentaje: propina)

print("Total a pagar: \(total)")

func CalcularPropina(precio: Double, porcentaje: Double) -> Double{
    let porPropina: Double = (precioCuenta * porcentaje) / 100
    return precio + porPropina
}




