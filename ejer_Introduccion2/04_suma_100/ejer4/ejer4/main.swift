//
//  main.swift
//  ejer4
//
//  Created by  on 3/2/25.
//
/**
 # Suma 100

 Escribe un programa que calcule la suma de los primeros 100 números enteros y los muestre en consola.

 > Utiliza [`print(_:separator:terminator:)`](https://developer.apple.com/documentation/swift/1541053-print) y prueba sus diferentes variaciones a la hora de mostrar los valores.

 */
import Foundation



let suma = (1...100).reduce(0, +)


print("La suma de los primeros 100 números enteros es: \(suma)")

print("La suma de los primeros 100 números enteros es: ", terminator: "")
print(suma)


print("La suma es: ", separator: " >> ", terminator: "")
print(suma)

print("Los primeros 100 números son:", terminator: " ")
for i in 1...100 {
    print(i, terminator: ", ")
}
print()

let numeros = (1...100).map { String($0) }.joined(separator: " ")
print("Números del 1 al 100: \(numeros)")
