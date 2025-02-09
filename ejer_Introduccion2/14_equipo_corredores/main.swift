/*

# Equipo y corredores

Modela las clases `Equipo` y `Corredor`: 

![](equipo_corredores.svg)

Desde el programa principal crea un equipo con 5 corredores y muestra todo el conjunto en pantalla.
*/

class Corredor {
    var nombre: String
    var apellidos: String
    var ranking: Int
    
    init(nombre: String, apellidos: String, ranking: Int) {
        self.nombre = nombre
        self.apellidos = apellidos
        self.ranking = ranking
    }
}

class Equipo {
    var nombre: String
    var corredores: [Corredor] = []
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    func anadirCorredor(corredor: Corredor) {
        self.corredores.append(corredor)
    }
    
    func mostrarCorredores() -> String {
        var datos: String = "Corredores del equipo: " + self.nombre + "\n"
        
        for corredor in corredores {
            datos += "Nombre: \(corredor.nombre) \(corredor.apellidos), Ranking: \(corredor.ranking)\n"
        }
        return datos
    }
}

let corredor1 = Corredor(nombre: "Carlos", apellidos: "Pérez García", ranking: 5)
let corredor2 = Corredor(nombre: "Ana", apellidos: "Lopez Martínez", ranking: 2)
let corredor3 = Corredor(nombre: "David", apellidos: "Ramírez Sánchez", ranking: 8)
let corredor4 = Corredor(nombre: "Lucía", apellidos: "Gómez Fernández", ranking: 3)
let corredor5 = Corredor(nombre: "Javier", apellidos: "Díaz Rodríguez", ranking: 1)

let equipo1 = Equipo(nombre: "Equipo1")
equipo1.anadirCorredor(corredor: corredor1)
equipo1.anadirCorredor(corredor: corredor2)
equipo1.anadirCorredor(corredor: corredor3)
equipo1.anadirCorredor(corredor: corredor4)
equipo1.anadirCorredor(corredor: corredor5)

print(equipo1.mostrarCorredores())
