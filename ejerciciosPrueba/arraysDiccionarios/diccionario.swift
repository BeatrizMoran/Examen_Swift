/*
Crea un diccionario con nombres de países y sus capitales. 
Permite que el usuario consulte la capital de un país ingresando su nombre.
*/

var paisesCapitales: [String: String] = [
    "España": "Madrid", 
    "Alemania": "Berlín", 
    "Rusia": "Moscú"
]

print("Ingresa el país: ")

if let pais = readLine(), !pais.isEmpty {
    
    if let capital = paisesCapitales[pais] {
        print("La capital de \(pais) es \(capital).")
    } else {
        print("Error: El país no está en la lista.")
    }
} else {
    print("Error: Entrada inválida.")
}
