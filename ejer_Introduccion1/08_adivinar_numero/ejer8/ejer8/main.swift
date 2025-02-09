//
//  main.swift
//  ejer8
//
//  Created by  on 20/1/25.
// # Adivinar número

/*Diseña un programa donde el usuario adivine un número aleatorio entre 1 y 100. El programa debe indicar si el número ingresado es "mayor" o "menor" al objetivo, hasta acertar.
*/

import Foundation
var correcto = false

var numeroAleatorio = Int.random(in: 1...100)
print("EL numero es: " + String(numeroAleatorio))

while correcto != true{
    print("Introduce un numero: ")
    if let input = readLine(), let numero = Int(input){
        comprobarNumero(numero: numero)
    }
    else{
        print("Error.- Introduce un numero entero")
    }
}


func comprobarNumero(numero: Int) {
    if numero < numeroAleatorio {
        print("No, el numero es mayor")
    }
    else if numero > numeroAleatorio{
        print("No, el numero es menor")
    }
    else{
        print("Correcto, has acertado!")
        correcto = true
    }
}

