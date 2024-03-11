import UIKit

class vehiculo{
    var marca:String = ""
    var modelo:String = ""
    var color:String = ""
    var velocidad:Int = 0
    
    func mover() {
        print("Vehiculo \(marca) esta avanzando a una velocidad de \(velocidad) kmh.")
    }
    
    func detener() {
        print("Vehiculo \(marca) esta detenido.")
    }
}
//Instanciacion
var vehiculo1 = vehiculo()
vehiculo1.marca = "KIA"
vehiculo1.modelo = "SEDAN"
vehiculo1.color = "GRIS"
vehiculo1.velocidad = 20
vehiculo1.mover()
print("Color de vehiculo es: \(vehiculo1.color)")
vehiculo1.detener()

class motocicleta: vehiculo{
    var numruedas:Int = 2
    var transmision:String = "cadena"
    override func mover() {
        print("Motocicleta \(marca) esta avanzando a una velocidad de \(velocidad) kmh.")
    }
}
var motocicleta1 = motocicleta()
motocicleta1.marca = "YAMAHA"
motocicleta1.modelo = "TRICITY"
motocicleta1.color = "NEGRO"
motocicleta1.velocidad = 30
motocicleta1.mover()
print("Color de motocicleta es: \(motocicleta1.color)")
print("# Rueda es: \(motocicleta1.numruedas)")
print("Transmision es: \(motocicleta1.transmision)")
motocicleta1.detener()
