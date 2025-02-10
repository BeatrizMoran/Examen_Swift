/*
switch case
Ejercicio 4:
Crea un programa que pida un día de la semana (como número del 1 al 7) y devuelva el nombre del día usando switch case.
*/

func solicitarDiaSemana() {
    print("Introduce el día de la semana:")

    guard let entrada = readLine(), let numero = Int(entrada) else {
        print("Entrada no válida. Debes introducir un número entero.")
        return solicitarDiaSemana() 
    }

    switch numero {
        case 1: print("Lunes")
        case 2: print("Martes")
        case 3: print("Miércoles")
        case 4: print("Jueves")
        case 5: print("Viernes")
        case 6: print("Sábado")
        case 7: print("Domingo")
        default:
            print("Número inválido. Debe ser del 1 al 7.")
            solicitarDiaSemana() 
    }
}

solicitarDiaSemana()
