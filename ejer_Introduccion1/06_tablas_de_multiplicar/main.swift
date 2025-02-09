import Foundation

print("Introduce un numeo del 1-10 para ver su tabla de multiplicacion")
if let input = readLine(), let num = Int(input), num > 0 && num <= 10{
    print(calcularTablaMultiplicar(num: num))
}
else{
    print("Error, introduce un numero del 1-10")
}

func calcularTablaMultiplicar(num: Int) -> String{
    var tabla: String = "Tabla de multiplicacion del: \(num)\n"
    var multi: Int
    for index in 1...10{
        multi = num * index
        tabla += "\(num) x \(index) = \(multi)\n"
    }
    return tabla
}