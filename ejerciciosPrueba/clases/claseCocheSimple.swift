/*
Define una clase Coche con las propiedades marca, modelo y velocidad. Agrega métodos para acelerar y frenar.
*/

class Coche{
    var marca: String
    var modelo: String
    var velocidad: Double

    init(marca: String, modelo: String, velocidad: Double){
        self.marca = marca
        self.modelo = modelo
        self.velocidad = velocidad
    }

    func acelerar(aceleracion: Double){
        self.velocidad += aceleracion
        print("Acelerando... Velocidad actual: \(self.velocidad) km/h")

    }

    func frenar(velocidadFrenada: Double){
        self.velocidad = self.velocidad - velocidadFrenada
         if self.velocidad < 0 { self.velocidad = 0 }
        print("Frenando... Velocidad actual: \(self.velocidad) km/h")
    }
}

let coche1 = Coche(marca: "Ford", modelo: "Focus", velocidad: 120.2)

print(coche1.velocidad)

coche1.acelerar(aceleracion: 20.2)


coche1.frenar(velocidadFrenada: 10.1)

