//
//  main.swift
//  ejer12
//
//  Created by  on 27/1/25.
//

/**
 
 # Palíndromo más largo

 Dado un arreglo de cadenas, encuentra cuál de ellas es el palíndromo más largo. Un palíndromo es una palabra que se lee igual al derecho y al revés (como "radar").

 */

import Foundation


var cadenas = ["adios", "radar", "arenera", "reconocer", "salas", "hola"]


var palindromoMasLargo: String = ""

for cadena in cadenas{
    var palindromoReverso = String(cadena.reversed())
    if cadena == palindromoReverso{
        if cadena.count > palindromoMasLargo.count{
            palindromoMasLargo = cadena
        }
    }
}
            
print(palindromoMasLargo)

