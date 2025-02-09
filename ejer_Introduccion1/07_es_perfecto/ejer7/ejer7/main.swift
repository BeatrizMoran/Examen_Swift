import Foundation

print("Introduce un numero: ")
if let input = readLine(), let numero = Int(input) {
    if esNumeroPerfecto(numero: numero) {
        print("El número \(numero) es un número perfecto.")
    } else {
        print("El número \(numero) no es un número perfecto.")
    }
} else {
    print("Error.- Introduce un número válido.")
}

func esNumeroPerfecto(numero: Int) -> Bool {
    var suma = 0
    
    for i in 1..<numero {
        if numero % i == 0 {
            suma += i
        }
    }
    
    return suma == numero
}
