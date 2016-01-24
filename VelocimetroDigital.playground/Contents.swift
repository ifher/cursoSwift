//: Velocímetro Digital

// Menudo desastre de explicación del ejercicio, 
// así es imposible saber si lo que haces es exactamente lo que se pide...
// Después de las discusiones en el foro, creo que todos estamos de acuerdo en que se pide esto


import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}


class Auto {
    
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        switch (self.velocidad){
        case .Apagado :
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja :
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia :
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta :
            self.velocidad = .VelocidadMedia
        }
        
        return (self.velocidad.rawValue, String(self.velocidad))
    }
}


var auto = Auto()

for var i=1; i<=20; i++ {
    var cambioV = auto.cambioDeVelocidad()
    
    print("\(i). \(cambioV.actual), \(cambioV.velocidadEnCadena)")
}