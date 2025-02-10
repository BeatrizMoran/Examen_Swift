/*
Crea una función que valide si un usuario puede ingresar a una página (debe ser mayor de edad).

*/

func verificarEdad(edad: Int) {
    guard edad >= 18 else {
        print("Acceso denegado. Debes ser mayor de edad.")
        return
    }
    print("Acceso permitido. Bienvenido.")
}

verificarEdad(edad: 17)  
verificarEdad(edad: 25)  

