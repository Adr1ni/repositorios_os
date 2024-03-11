//: Playground - noun: a place where people can play
import UIKit

var categoria = "tercio"
var promedio = 19
if categoria == "tercio" && promedio>15{
    switch promedio {
    case 15,16:
        print("25% de beca")
    case 17...19:
        print("50% de beca")
    case 20:
        print("100% de beca")
    default:
        print("Promedio no valido")
    }
}else{
    print("No cumplw con los re uisitos para beca")
}

