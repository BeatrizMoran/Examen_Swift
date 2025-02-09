//
//  main.swift
//  ejer11
//
//  Created by  on 20/1/25.
//

/*
 
 # Historial de transacciones

 Diseña una lista que registre transacciones bancarias (depósitos y retiros). Cada entrada debe incluir el tipo de transacción, la cantidad y un saldo acumulado.

 */
import Foundation

struct Transaccion {
    var tipo: String
    var cantidad: Double
    var saldo: Double
}

class CuentaBancaria {
    private var saldo: Double = 0.0
    private var transacciones: [Transaccion] = []
    
    func depositar(cantidad: Double) {
        saldo += cantidad
        let transaccion = Transaccion(tipo: "Depósito", cantidad: cantidad, saldo: saldo)
        transacciones.append(transaccion)
    }
    
    func retirar(cantidad: Double) {
        if cantidad <= saldo {
            saldo -= cantidad
            let transaccion = Transaccion(tipo: "Retiro", cantidad: cantidad, saldo: saldo)
            transacciones.append(transaccion)
        } else {
            print("No tienes suficiente saldo para realizar este retiro.")
        }
    }
    
    func mostrarTransacciones() {
        for transaccion in transacciones {
            print("\(transaccion.tipo) de $\(transaccion.cantidad), Saldo actual: $\(transaccion.saldo)")
        }
    }
    
    func obtenerSaldo() -> Double {
        return saldo
    }
}

let miCuenta = CuentaBancaria()

miCuenta.depositar(cantidad: 500)
miCuenta.depositar(cantidad: 200)
miCuenta.retirar(cantidad: 150)

print("\nHistorial de transacciones:")
miCuenta.mostrarTransacciones()

print("\nSaldo final: $\(miCuenta.obtenerSaldo())")






