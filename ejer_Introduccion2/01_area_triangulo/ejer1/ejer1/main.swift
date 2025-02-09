//
//  main.swift
//  ejer1
//
//  Created by  on 3/2/25.
//

/**
 # Área de un triángulo

 Escribe un programa que, dada la base y la altura de un triángulo, calcule el área.

 Para leer un valor por teclado en Swift haz, por ejemplo:

 ```swift
 var altura = Double(readLine()!) ?? 0.0
 ```

 > Nota: El área es igual a la base por la altura entre dos.

 */
import Foundation

print("Introduce la altura:")
var altura = Double(readLine()!) ?? 0.0
print("Introduce la base:")

var base = Double(readLine()!) ?? 0.0

func calcularArea(altura: Double, base: Double) -> Double {
    return (altura * base) / 2
}

var area = calcularArea(altura: altura, base: base)

print("El área del triángulo es: ", area)
