//
//  main.swift
//  ejer18
//
//  Created by  on 3/2/25.
//

/**
 Diseña una clase `CuentaBancaria` con métodos para depositar, retirar y consultar el saldo. Añade validaciones para evitar saldos negativos. Extiende la funcionalidad con una clase `CuentaAhorro` que calcule intereses mensuales.
 */

import Foundation

class CuentaBancaria {
    var saldo: Double
    
    init(saldoInicial: Double) {
        self.saldo = saldoInicial
    }
    
    func depositar(cantidad: Double) {
        if cantidad > 0 {
            saldo += cantidad
            print("Depósito de \(cantidad) realizado con éxito.")
        } else {
            print("Cantidad de depósito inválida.")
        }
    }
    
    func retirar(cantidad: Double) {
        if cantidad > 0 {
            if cantidad <= saldo {
                saldo -= cantidad
                print("Retiro de \(cantidad) realizado con éxito.")
            } else {
                print("Fondos insuficientes para realizar el retiro.")
            }
        } else {
            print("Cantidad de retiro inválida.")
        }
    }
    
    func consultarSaldo() -> Double {
        return saldo
    }
}


var cuentaBasica = CuentaBancaria(saldoInicial: 5000)
cuentaBasica.depositar(cantidad: 1000)
cuentaBasica.retirar(cantidad: 2000)     
print("Saldo actual en cuenta básica: \(cuentaBasica.consultarSaldo())")
