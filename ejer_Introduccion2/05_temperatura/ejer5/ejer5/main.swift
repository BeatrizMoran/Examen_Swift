//
//  main.swift
//  ejer5
//
//  Created by  on 3/2/25.
//
/**
 # Temperatura

 Dados una temperatura y una letra (`F` o `K`), convertir la temperatura a la escala correspondiente ([Fahrenheit](https://es.wikipedia.org/wiki/Grado_Fahrenheit) o [Kelvin](https://es.wikipedia.org/wiki/Kelvin)) y mostrar el resultado.

 */
import Foundation

func fahrenheitToCelsius(fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5 / 9
}

func celsiusToFahrenheit(celsius: Double) -> Double {
    return (celsius * 9 / 5) + 32
}

func kelvinToCelsius(kelvin: Double) -> Double {
    return kelvin - 273.15
}

func celsiusToKelvin(celsius: Double) -> Double {
    return celsius + 273.15
}

print("Introduce la temperatura:")
if let temperaturaInput = readLine(), let temperatura = Double(temperaturaInput) {
    
    print("Introduce la escala (F para Fahrenheit, K para Kelvin):")
    if let escala = readLine()?.uppercased() {
        
        switch escala {
        case "F":
            let celsius = fahrenheitToCelsius(fahrenheit: temperatura)
            print("\(temperatura)° Fahrenheit es igual a \(celsius)° Celsius.")
            
            let kelvin = celsiusToKelvin(celsius: celsius)
            print("\(temperatura)° Fahrenheit es igual a \(kelvin) K.")
            
        case "K":
            let celsius = kelvinToCelsius(kelvin: temperatura)
            print("\(temperatura) K es igual a \(celsius)° Celsius.")
            
            let fahrenheit = celsiusToFahrenheit(celsius: celsius)
            print("\(temperatura) K es igual a \(fahrenheit)° Fahrenheit.")
            
        default:
            print("Escala no válida. Usa 'F' para Fahrenheit o 'K' para Kelvin.")
        }
        
    } else {
        print("Entrada inválida para la escala.")
    }
} else {
    print("Entrada inválida para la temperatura.")
}


