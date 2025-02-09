/*
# Matriz aleatoria

Dados dos valores (filas y columnas), genera una matriz de números enteros aleatorios de tamaño FxC y muéstrala en pantalla.

Para generar valores aleatorios el propio tipo [dispone de un método](https://developer.apple.com/documentation/swift/int/2995648-random):

```swift
let aleatorio = Int.random(in: 1..<100)
```

En [este tutorial](https://www.ict.social/swift/basics/multidimensional-arrays-in-swift) tienes ejemplos sobre cómo crear una matriz bidimensional en Swift.

*/

import Foundation

func generarMatrizAleatoria(filas: Int, columnas: Int) -> [[Int]] {
    var matriz: [[Int]] = []
    for _ in 0..<filas {
        var fila: [Int] = []
        for _ in 0..<columnas {
            fila.append(Int.random(in: 1..<100))
        }
        matriz.append(fila)
    }
    return matriz
}

func imprimirMatriz(_ matriz: [[Int]]) {
    for fila in matriz {
        print(fila.map { String($0) }.joined(separator: " \t"))
    }
}

print("Introduce el número de filas:", terminator: " ")
if let inputFilas = readLine(), let filas = Int(inputFilas), filas > 0 {
    print("Introduce el número de columnas:", terminator: " ")
    if let inputColumnas = readLine(), let columnas = Int(inputColumnas), columnas > 0 {
        
        let matriz = generarMatrizAleatoria(filas: filas, columnas: columnas)
        print("\nMatriz generada:")
        imprimirMatriz(matriz)
        
    } else {
        print("Número de columnas no válido.")
    }
} else {
    print("Número de filas no válido.")
}