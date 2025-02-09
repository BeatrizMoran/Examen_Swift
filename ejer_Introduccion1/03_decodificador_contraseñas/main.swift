print("Introduce un numero")

if let input = readLine(), let num = Int(input) {
    if let letra = decodificarNumero(num) {
        print("La letra correspondiente es \(letra)") 
    } else {
        print("Número fuera de rango")
    }
} else {
    print("Error. Introduce un número entero.")
}

func decodificarNumero(_ numero: Int) -> String? {
    guard numero >= 1 && numero <= 26 else {
        return nil 
    }
    
    let unicodeValue = 65 + (numero - 1) // Unicode para 'A' es 65
    let letra = String(UnicodeScalar(unicodeValue)!)
    
    return letra
}