/*
# Buscar mayor y menor

Crea un array de 10 posiciones con números aleatorios.

Muestra el array en pantalla destacando el menor y el mayor número que haya en él, utilizando las funciones `buscarMayor()` y `buscarMenor()` que tienes que escribir.

*/

import Foundation
var n: Int
var numeros: [Int] = []
for _ in 1...10{
    n = Int.random(in: 1..<100)
    numeros.append(n)
}

print(numeros)

func buscarMenor(numeros: [Int]) -> Int {
    var menor = 101 
    for num in numeros {
        if num < menor {
            menor = num
        }
    }
    return menor
}

func buscarMayor(listaNumeros: [Int]) -> Int{
    var mayor = -1
    for num in listaNumeros{
        if num > mayor{
            mayor = num
        }
    }
    return mayor
}

var menor: Int = buscarMenor(numeros: numeros) 
var mayor: Int = buscarMayor(listaNumeros: numeros) 


print("El menor número es \(menor)")
print("El mayor número es " , mayor)