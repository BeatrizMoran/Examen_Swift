import Foundation


print("Introduce una edad:")

if let input = readLine(), let edad = Int(input) {
    switch edad {
    case 0..<12: 
        print("Niño")
    case 12..<18: 
        print("Adolescente")
    case 18..<65: 
        print("Adulto")
    case 65...: 
        print("Mayor")
    default:
        print("Ha ocurrido un error")
    }
} else {
    print("Error, introduce una edad válida")
}
