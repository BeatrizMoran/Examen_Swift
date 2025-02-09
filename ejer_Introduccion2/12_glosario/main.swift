/*
# Glosario

Crea un glosario de términos de Informática que contenga 10 palabras y sus definiciones.

Realiza las siguientes operaciones:

- Muestra el diccionario.
- Ordena el diccionario por término y muestra la lista completa.
- Busca una palabra y, si existe, su definición.
- Borra una palabra.


*/

import Foundation

var glosario: [String: String] = [
    "Algoritmo": "Conjunto de instrucciones o reglas definidas para resolver un problema.",
    "Bug": "Error o fallo en un programa de software.",
    "Compilador": "Programa que traduce código fuente a código máquina.",
    "Depuración": "Proceso de identificación y corrección de errores en un programa.",
    "Framework": "Conjunto de herramientas y bibliotecas para facilitar el desarrollo de software.",
    "Hardware": "Componentes físicos de un sistema informático.",
    "Interfaz": "Punto de interacción entre el usuario y una computadora.",
    "Librería": "Colección de funciones y recursos reutilizables para el desarrollo de software.",
    "Sistema Operativo": "Software que administra los recursos de hardware y software en una computadora.",
    "Variable": "Espacio en memoria donde se almacena un valor que puede cambiar."
]

func mostrarGlosario(_ glosario: [String: String]) {
    print("Glosario de Informática:")
    for (termino, definicion) in glosario {
        print("\(termino): \(definicion)")
    }
}

func mostrarGlosarioOrdenado(_ glosario: [String: String]) {
    let glosarioOrdenado = glosario.sorted { $0.key.lowercased() < $1.key.lowercased() }
    print("\nGlosario Ordenado:")
    for (termino, definicion) in glosarioOrdenado {
        print("\(termino): \(definicion)")
    }
}

func buscarTérmino(_ termino: String, en glosario: [String: String]) {
    if let definicion = glosario.first(where: { $0.key.lowercased() == termino.lowercased() })?.value {
        print("\(termino.capitalized): \(definicion)")
    } else {
        print("El término no se encuentra en el glosario.")
    }
}

func borrarTérmino(_ termino: String, de glosario: inout [String: String]) {
    if let keyToRemove = glosario.keys.first(where: { $0.lowercased() == termino.lowercased() }) {
        glosario.removeValue(forKey: keyToRemove)
        print("\(keyToRemove) ha sido eliminado del glosario.")
    } else {
        print("El término no se encuentra en el glosario.")
    }
}

mostrarGlosario(glosario)
mostrarGlosarioOrdenado(glosario)

print("\nIntroduce un término a buscar:", terminator: " ")
if let palabra = readLine() {
    buscarTérmino(palabra, en: glosario)
}

print("\nIntroduce un término a borrar:", terminator: " ")
if let palabraABorrar = readLine() {
    borrarTérmino(palabraABorrar, de: &glosario)
}

print("\nGlosario Actualizado:")
mostrarGlosario(glosario)