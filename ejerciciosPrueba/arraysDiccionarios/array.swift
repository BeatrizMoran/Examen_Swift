func pedirNombres() -> [String] {
    var nombres: [String] = []
    
    repeat {
        print("Introduce un nombre o 'fin' para salir: ")
        
        guard let input = readLine(), !input.isEmpty else {
            print("Error: Introduce un nombre válido.")
            continue // Vuelve a pedir sin agregar nada
        }
        
        if input.lowercased() == "fin" { // Si el usuario escribe 'fin', se detiene
            break
        }
        
        nombres.append(input)

    } while true
    
    return nombres
}

func mostrarNombres(nombres: [String]) {
    print("\nNombres ingresados:")
    for nombre in nombres {
        print("- \(nombre)")
    }
}

// Llamar a las funciones
let nombres = pedirNombres()
mostrarNombres(nombres: nombres)
