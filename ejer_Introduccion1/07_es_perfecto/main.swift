//
//  main.swift
//  SwiftEjerciciosIntroduccion
//
//  Created by  on 20/1/25.
//
import Foundation

print("Introduce un numero: ")
if let input = readLine(), let numero = Int(numero){
    esNumeroPerfecto(numero: <#T##Int#>)
}
else{
    print("Error.- Introduce un numero valido")
}
func esNumeroPerfecto(numero: Int) -> Bool{
        var suma = 0
    
    for i in 1..numero{
        if numero % i == 0{
            suma += i
        }
    }
    
    if suma == numero{
        print("El numero: " + numero + " es un numero perfecto")
    }
}
