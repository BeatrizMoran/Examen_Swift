/*
# Verificar DNI

Haz un programa que dado un DNI y una letra, [compruebe](https://www.interior.gob.es/opencms/ca/servicios-al-ciudadano/tramites-y-gestiones/dni/calculo-del-digito-de-control-del-nif-nie/) que la letra introducida sea la correcta para ese DNI.

> Crear tres versiones, una usando switch, otra usando arrays y otra usando diccionarios.

*/

import Foundation

// Función para calcular la letra del DNI usando switch
func calcularLetraDNI_Switch(dni: Int) -> Character {
    let resto = dni % 23
    switch resto {
    case 0: return "T"
    case 1: return "R"
    case 2: return "W"
    case 3: return "A"
    case 4: return "G"
    case 5: return "M"
    case 6: return "Y"
    case 7: return "F"
    case 8: return "P"
    case 9: return "D"
    case 10: return "X"
    case 11: return "B"
    case 12: return "N"
    case 13: return "J"
    case 14: return "Z"
    case 15: return "S"
    case 16: return "Q"
    case 17: return "V"
    case 18: return "H"
    case 19: return "L"
    case 20: return "C"
    case 21: return "K"
    case 22: return "E"
    default: return "?"
    }
}

// Función para calcular la letra del DNI usando arrays
func calcularLetraDNI_Array(dni: Int) -> Character {
    let letras = ["T", "R", "W", "A", "G", "M", "Y", "F", "P", "D", "X", "B", "N", "J", "Z", "S", "Q", "V", "H", "L", "C", "K", "E"]
    return Character(letras[dni % 23])
}

// Función para calcular la letra del DNI usando diccionario
func calcularLetraDNI_Diccionario(dni: Int) -> Character {
    let letras: [Int: Character] = [
        0: "T", 1: "R", 2: "W", 3: "A", 4: "G", 5: "M", 6: "Y", 7: "F", 8: "P", 9: "D", 
        10: "X", 11: "B", 12: "N", 13: "J", 14: "Z", 15: "S", 16: "Q", 17: "V", 18: "H", 
        19: "L", 20: "C", 21: "K", 22: "E"
    ]
    return letras[dni % 23] ?? "?"
}

// Solicitar DNI y letra al usuario
print("Introduce el número de DNI:", terminator: " ")
if let inputDNI = readLine(), let dni = Int(inputDNI) {
    print("Introduce la letra del DNI:", terminator: " ")
    if let inputLetra = readLine(), let letra = inputLetra.uppercased().first {
        let letraCalculada_Switch = calcularLetraDNI_Switch(dni: dni)
        let letraCalculada_Array = calcularLetraDNI_Array(dni: dni)
        let letraCalculada_Diccionario = calcularLetraDNI_Diccionario(dni: dni)
        
        print("\nResultados:")
        print("Usando switch: \(letraCalculada_Switch)")
        print("Usando array: \(letraCalculada_Array)")
        print("Usando diccionario: \(letraCalculada_Diccionario)")
        
        if letra == letraCalculada_Switch {
            print("La letra introducida es correcta" )
        } else {
            print("La letra introducida es incorrecta ")
        }
    } else {
        print("Entrada no válida para la letra del DNI.")
    }
} else {
    print("Entrada no válida para el número de DNI.")
}