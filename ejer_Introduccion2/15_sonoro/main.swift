import Foundation

// Protocolo Sonoro
protocol Sonoro {
    func sonar(volumen: Int)
}

// Clase base InstrumentoMusical que adopta Sonoro
class InstrumentoMusical: Sonoro {
    init() {
        print("\(type(of: self)) creado.")
    }

    func sonar(volumen: Int) {
        print("El instrumento musical suena a volumen \(volumen).")
    }
}

// Subclase Trompeta
class Trompeta: InstrumentoMusical {
    override func sonar(volumen: Int) {
        print("La trompeta suena fuerte a volumen \(volumen) .")
    }
}

// Subclase Tambor
class Tambor: InstrumentoMusical {
    override func sonar(volumen: Int) {
        print("El tambor retumba a volumen \(volumen) .")
    }
}

// Clase Sirena que implementa directamente Sonoro
class Sirena: Sonoro {
    init() {
        print("Sirena creada.")
    }

    func sonar(volumen: Int) {
        print("La sirena emite un sonido agudo a volumen \(volumen) .")
    }
}

// Creación de objetos
let trompeta = Trompeta()
trompeta.sonar(volumen: 8)

let tambor = Tambor()
tambor.sonar(volumen: 5)

let sirena = Sirena()
sirena.sonar(volumen: 10)
