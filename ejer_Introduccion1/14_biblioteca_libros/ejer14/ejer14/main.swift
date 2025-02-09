//
//  main.swift
//  ejer14
//
//  Created by  on 27/1/25.
//

/**
 # Biblioteca y libros

 Crea una clase `Libro` con propiedades como `título`, `autor` y `género`. Luego, diseña una clase `Biblioteca` que permita añadir libros, buscar libros por género y listar todos los libros.

 */
import Foundation

class Libro{
    internal init(titulo: String, autor: String, genero: String) {
        self.titulo = titulo
        self.autor = autor
        self.genero = genero
    }
    
    var titulo: String
    var autor: String
    var genero: String
    
}

class Biblioteca{
    var libros = [Libro]()
    
    func anadirLibro(libro: Libro){
        libros.append(libro)
    }
    
    func buscarLibroGenero(genero: String)-> [String]{
        var librosGenero = [String]()
        
        
        for libro in libros{
            if libro.genero.lowercased() == genero.lowercased(){
                librosGenero.append(libro.titulo)
            }
        }
        return librosGenero
    }
    
    func listarLibros()-> String{
        var contador = 1
        var listaLibros = ""
        for libro in libros {
            listaLibros += "Libro \(contador): \nTitulo: \(libro.titulo)\nAutor: \(libro.autor)\nGenero: \(libro.genero)\n******************\n"
            contador += 1
        }
        return listaLibros
    }
}
let libro1 = Libro(titulo: "Cien años de soledad", autor: "Gabriel García Márquez", genero: "Drama")
let libro2 = Libro(titulo: "1984", autor: "George Orwell", genero: "Distopía")
let libro3 = Libro(titulo: "El principito", autor: "Antoine de Saint-Exupéry", genero: "Fábula")
let libro4 = Libro(titulo: "Matar a un ruiseñor", autor: "Harper Lee", genero: "Drama")
let libro5 = Libro(titulo: "Don Quijote de la Mancha", autor: "Miguel de Cervantes", genero: "Novela")
let libro6 = Libro(titulo: "Fahrenheit 451", autor: "Ray Bradbury", genero: "Ciencia ficción")

var miBiblio = Biblioteca()
miBiblio.anadirLibro(libro: libro1)
miBiblio.anadirLibro(libro: libro2)
miBiblio.anadirLibro(libro: libro3)
miBiblio.anadirLibro(libro: libro4)
miBiblio.anadirLibro(libro: libro5)
miBiblio.anadirLibro(libro: libro6)

print("Libros de drama: ", miBiblio.buscarLibroGenero(genero: "drama"))
print("Lista de libros: ", miBiblio.listarLibros())


