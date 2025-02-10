/*
Crea un programa que imprima la tabla de multiplicar de un número ingresado, usando un bucle for.
*/


func tablaMultiplicacion() {
    var numero: Int?

    repeat {
        print("Introduce un número entero: ", terminator: "")
        if let input = readLine(), let valor = Int(input) {
            numero = valor
        } else {
            print("Error: Debes introducir un número entero válido.")
        }
    } while numero == nil

    let n = numero!
    print("\nTabla de multiplicación del \(n):")
    
    for i in 1...10 {  
        print("\(n) X \(i) = \(n * i)")
    }
}

tablaMultiplicacion()





//

var numCorrecto = false
repeat{
    print("Introduce un numero entero")
    
    if let input = readLine(), let numero = Int(input){
        numCorrecto = true
        let tabla = tablaMulti(num: numero)
        print(tabla)
    }else{
        print("Error.- Introduce un numero entero")
    }
}while !numCorrecto 

func tablaMulti(num: Int) -> String{
    var tabla = "Tabla multiplicacion del: (num)"
    for i in 1...10{
        tabla += "\n \(num) X \(i) = \(num*i)"
    }
    return tabla
}