//
//  main.swift
//  ejer3
//
//  Created by  on 3/2/25.
//
/**
 # Par-impar

 Dado un número, escribir en pantalla si el número es par o impar.

 */
import Foundation

print("Introduce un número entero")

if let numero = Int(readLine()!){
    if numero % 2 == 0{
        print("El numero es par")
    }
    else{
        print("El numero es impar")
    }
}
else{
    print("Error.- Introduce un numero entero")
}
