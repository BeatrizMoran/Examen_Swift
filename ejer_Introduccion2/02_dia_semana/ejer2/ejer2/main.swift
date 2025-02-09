//
//  main.swift
//  ejer2
//
//  Created by  on 3/2/25.
//

/**
 # Día de la semana

 Dado un número comprendido entre el 1 y el 7, imprimir el día de la semana al que hace referencia.

 Por ejemplo, si introducen el `1`, se visualizará `Lunes`.

 > Nota: implementarlo con alternativa simple y múltiple.

 */
import Foundation

/**SIMPLE**/

print("Introduce un número entre 1 y 7:")
if let numero = Int(readLine()!) {
    if numero == 1 {
        print("Lunes")
    } else if numero == 2 {
        print("Martes")
    } else if numero == 3 {
        print("Miércoles")
    } else if numero == 4 {
        print("Jueves")
    } else if numero == 5 {
        print("Viernes")
    } else if numero == 6 {
        print("Sábado")
    } else if numero == 7 {
        print("Domingo")
    } else {
        print("Número fuera de rango. Por favor ingresa un número entre 1 y 7.")
    }
} else {
    print("Entrada inválida, por favor ingresa un número.")
}

/**
MULTIPLE
 print("Introduce un número entre 1 y 7:")
 if let numero = Int(readLine()!) {
     switch numero {
     case 1:
         print("Lunes")
     case 2:
         print("Martes")
     case 3:
         print("Miércoles")
     case 4:
         print("Jueves")
     case 5:
         print("Viernes")
     case 6:
         print("Sábado")
     case 7:
         print("Domingo")
     default:
         print("Número fuera de rango. Por favor ingresa un número entre 1 y 7.")
     }
 } else {
     print("Entrada inválida, por favor ingresa un número.")
 }

 */


