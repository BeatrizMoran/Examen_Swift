//
//  main.swift
//  ejer10
//
//  Created by  on 20/1/25.
//

/*
 # Cálculo de promedios

 Dado un arreglo de números, escribe un programa que calcule la suma y el promedio de todos sus elementos.

 */
 
import Foundation

let numeros: [Int] = [6, 4, 8, 3, 2, 5]
var suma = 0
var promedio = 0

func calcularSumaPromedio(numeros: [Int]){
    for numero in numeros {
        suma += numero
    }
    promedio = suma / numeros.count
    
    print("La suma es: " + String(suma) + " y el promedio es: " + String(promedio))
}

calcularSumaPromedio(numeros: numeros)
