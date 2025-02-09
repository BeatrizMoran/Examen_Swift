//
//  main.swift
//  ejer7
//
//  Created by  on 3/2/25.
//

/**
 # Lista de números primos

 Escribe un programa en el que pidamos al usuario un número y nos muestre los números primos entre 1 y ese número (incluido).

 > Para verificar si un número es primo, crea una función que reciba un entero como parámetro y retorne verdadero o falso.

 */
 
import Foundation

func esPrimo(_ numero: Int) -> Bool {
    if numero < 2 { return false }
    for i in 2..<numero {
        if numero % i == 0 {
            return false
        }
    }
    return true
}

print("Introduce un número entero:", terminator: " ")
if let input = readLine(), let numero = Int(input) {
    print("Números primos entre 1 y \(numero):")
    for i in 1...numero {
        if esPrimo(i) {
            print(i, terminator: " ")
        }
    }
    print()
} else {
    print("Error.- Introduce un número entero.")
}

