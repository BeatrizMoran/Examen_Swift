//
//  main.swift
//  ejer9
//
//  Created by  on 20/1/25.
/*
 # Inventario de productos

    Crea un diccionario donde las claves sean nombres de productos y los valores sean sus cantidades en stock. Implementa funciones para añadir, eliminar y consultar productos.

 */
import Foundation

var inventario: [String: Int] = ["pan": 4, "azucar": 9, "manzanas": 23, "cafe": 32]

func anadirProducto() {
    print("Introduce el nombre del producto a añadir:")
    if let producto = readLine() {
        print("Introduce la cantidad a añadir para \(producto):")
        if let cantidad = readLine(), let cantidadInt = Int(cantidad) {
            if let _ = inventario[producto] {
                inventario[producto]! += cantidadInt
                print("Se han añadido \(cantidadInt) unidades de \(producto).")
            } else {
                inventario[producto] = cantidadInt
                print("Se ha añadido el producto \(producto) con \(cantidadInt) unidades.")
            }
        } else {
            print("Cantidad no válida. Intenta de nuevo.")
        }
    }
}

func eliminarProducto() {
    print("Introduce el nombre del producto a eliminar:")
    if let producto = readLine() {
        if inventario[producto] != nil {
            inventario.removeValue(forKey: producto)
            print("El producto \(producto) ha sido eliminado del inventario.")
        } else {
            print("El producto \(producto) no está en el inventario.")
        }
    }
}

func consultarProducto() {
    print("Introduce el nombre del producto a consultar:")
    if let producto = readLine() {
        if let cantidad = inventario[producto] {
            print("El producto \(producto) tiene \(cantidad) unidades en stock.")
        } else {
            print("El producto \(producto) no está en el inventario.")
        }
    }
}

var opcion = 0

while opcion != 4 {
    let menu = """
    Introduce el número correspondiente a la acción que desee realizar:
    1.- INSERTAR
    2.- Eliminar
    3.- Consultar
    4.- Salir
    """
    print(menu)

    if let input = readLine(), let opcionInt = Int(input) {
        opcion = opcionInt
        
        switch opcion {
        case 1:
            anadirProducto()
        case 2:
            eliminarProducto()
        case 3:
            consultarProducto()
        case 4:
            print("¡Hasta luego!")
        default:
            print("Opción no válida. Por favor, ingrese un número entre 1 y 4.")
        }
    } else {
        print("Opcion no válida. Por favor, ingresa un número entero.")
    }
}




