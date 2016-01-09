//: Playground: Mini reto

// No deja claro si las etiquetas se tienen que acumular o no, así que están las dos opciones implementadas
// creo que es mejor acumulando etiquetas, por eso dejo ese bloque de código descomentado.

import UIKit

let numeros = 0...100

for numero in numeros {

    // si se tienen que acumular las etiquetas este código
    var imprimir = "\(numero)"

    if numero % 5 == 0 {
        imprimir += " #Bingo"
    }
    if numero % 2 == 0 {
        imprimir += " #par"
    }else{
        imprimir += " #impar"
    }
    if numero >= 30 && numero <= 40 {
        imprimir += " #VivaSWIFT"
    }
    
    print(imprimir)
    
    // Si no se tienen que acumular las etiquetas, sería el siguiente bloque

//    if numero >= 30 && numero <= 40 {
//        print("\(numero) #VivaSWIFT")
//    }else if numero % 5 == 0 {
//        print("\(numero) #Bingo")
//    }else if numero % 2 == 0 {
//        print("\(numero) #par")
//    }else{
//        print("\(numero) #impar")
//    }

}
