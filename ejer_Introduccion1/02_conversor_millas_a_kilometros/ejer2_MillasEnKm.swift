
//Crea una función que reciba una distancia en millas y la convierta a kilómetros. (1 milla = 1.60934 km).

print("Introduce las millas")

var millas = Double(readLine()!) ?? 0.0

var kilómetros = convertirMillas(millas: millas)

print(millas, " millas, son: ", kilómetros, " kilometros")

func convertirMillas(millas: Double) -> Double{
    let km: Double = millas * 1.60934
    return km
}