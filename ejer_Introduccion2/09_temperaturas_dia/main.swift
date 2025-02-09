/*
# Temperaturas del día

Crea un array que contenga las temperaturas de un día (1 cada hora durante 24 horas).

Usando los datos contenidos en el array, calcula la temperatura media, la máxima y la mínima. 

Visualiza la información en forma de gráfico de barras. Por ejemplo:

```
 0  ***************  15.0
 1  ***************  15.2
 2  ***************  15.1
 3  ***************  15.2
 4  ***************  15.1
 5  ***************  15.1
 6  **************  14.9  --> MIN
 7  ****************  16.1
 8  ****************  16.5
 9  *****************  17.2
10  *******************  19.5
11  ********************  20.0
12  **********************  22.1
13  ***********************  23.3
14  *************************  25.2
15  **************************  26.3  --> MAX
16  *************************  25.9
17  *************************  25.8
18  ************************  24.2
19  ************************  24.1
20  ********************  20.7
21  *******************  19.6
22  *****************  17.3
23  ****************  16.5
Media: 19.4
```
*/

import Foundation

let temperaturas: [Double] = [
    15.0, 15.2, 15.1, 15.2, 15.1, 15.1, 14.9, 16.1,
    16.5, 17.2, 19.5, 20.0, 22.1, 23.3, 25.2, 26.3,
    25.9, 25.8, 24.2, 24.1, 20.7, 19.6, 17.3, 16.5
]

let temperaturaMedia = temperaturas.reduce(0, +) / Double(temperaturas.count)
let temperaturaMaxima = temperaturas.max()!
let temperaturaMinima = temperaturas.min()!

for (hora, temp) in temperaturas.enumerated() {
    let barra = String(repeating: "*", count: Int(temp))
    var extra = ""
    if temp == temperaturaMaxima {
        extra = "  --> MAX"
    } else if temp == temperaturaMinima {
        extra = "  --> MIN"
    }
    print(String(format: "%2d  %@  %.1f%@", hora, barra, temp, extra))
}

print(String(format: "Media: %.1f", temperaturaMedia))
