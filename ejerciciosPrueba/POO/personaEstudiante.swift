/*
Crea una clase Persona con nombre, edad y un método que imprima sus datos. Luego, crea una subclase Estudiante que agregue un atributo grado y un método para mostrar el grado del estudiante.
*/
class Persona{
    var nombre: String
    var edad: Int

    init(nombre: String, edad: Int){
        self.nombre = nombre
        self.edad = edad
    }

    func mostrarDatos(){
        print("Nombre: \(self.nombre), Edad: \(self.edad)")
    }
}

class Estudiante: Persona {
    var grado: String
    
    init(nombre: String, edad: Int, grado: String) {
        self.grado = grado
        super.init(nombre: nombre, edad: edad)
    }
    
    func mostrarGrado() {
        print("\(nombre) está en el grado \(grado).")
    }
}

// Prueba de la clase
let estudiante1 = Estudiante(nombre: "Luis", edad: 20, grado: "Universidad")
estudiante1.mostrarDatos()
estudiante1.mostrarGrado()