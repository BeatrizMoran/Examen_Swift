//
//  main.swift
//  ejer6
//
//  Created by  on 3/2/25.
//
/**
 # Factorial

 Escribe un programa que calcule el [factorial](https://es.wikipedia.org/wiki/Factorial) de un número leído por teclado.

 > Nota: escribe la versión iterativa y la recursiva.

 */
import Foundation

func factorialRecursivo(n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorialRecursivo(n: n - 1)
    }
}

print("Escribe un numero entero:")
if let input = readLine(), let numero = Int(input){
    var factorial = 1
    for i in 1...numero{
        factorial *= i
    }
    print(factorial)
    
    // Calcular el factorial de manera recursiva
        let factorialRec = factorialRecursivo(n: numero)
        print("Factorial de \(numero) (recursivo): \(factorialRec)")
}
else{
    print("Error, introduce un numero entero")
}
