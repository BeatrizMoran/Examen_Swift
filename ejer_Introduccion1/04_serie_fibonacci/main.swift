import Foundation

print("Introduce un número:")
if let input = readLine(), let num = Int(input), num >= 0 {
    let resultado = fibonacci(limite: num)
    print("Serie de Fibonacci hasta \(num): \(resultado)")
} else {
    print("Error, introduce un número entero no negativo.")
}

func fibonacci(limite: Int) -> [Int] {
    var fibonacci: [Int] = [0, 1] 
    
    if limite == 0 { return [0] }
    if limite == 1 { return [0, 1] }
    
    var siguienteNumero = fibonacci[fibonacci.count - 1] + fibonacci[fibonacci.count - 2]
    while siguienteNumero <= limite {
        fibonacci.append(siguienteNumero)
        siguienteNumero = fibonacci[fibonacci.count - 1] + fibonacci[fibonacci.count - 2]
    }
    
    return fibonacci
}
