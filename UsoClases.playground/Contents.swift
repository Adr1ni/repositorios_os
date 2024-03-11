import UIKit

struct Notas{
    private let porcentajeTeo = 0.3
    private let porcentajeLab = 0.7
    var promedioTeo = 0.0
    var promedioLab = 0.0
    var x = 12.7733333
        
    func promedioFinal() -> Double {
        let promedio = self.promedioTeo*self.porcentajeTeo + self.promedioLab*self.porcentajeLab
        return promedio
    }
}
class Curso{
    var nombre:String = ""
    var notas = Notas()
}

class Alumno{
    var nombre: String
    var cursos : [Curso]
    init(nombre:String, cursos: [Curso]) {
        self.nombre = nombre
        self.cursos = cursos
    }
    
    func listaCursosNotas() {
        for curso in self.cursos {
            print("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
            let nombreCurso = curso.nombre
            let notaTeoria = curso.notas.promedioTeo
            let notaLaboratorio = curso.notas.promedioLab
            let notaFinal = curso.notas.promedioFinal()
            print("Curso: \(nombreCurso)")
            print("Teoria: \(notaTeoria)")
            print("Laboratorio: \(notaLaboratorio)")
            print("Promedio Final: \(notaFinal)")
        }
    }
    func fin(){
        for curso in self.cursos{
            let finx = curso.notas.x
            print("Promedio General: \(finx)")
        }
    }
}



var cursos = [Curso]()

//curso 1
var curso1 = Curso()
var nota1 = Notas()
curso1.nombre = "Desarrollo de aplicaciones moviles"
nota1.promedioTeo = 12.5
nota1.promedioLab = 13
curso1.notas = nota1

//curso a lista
cursos.append(curso1)

//curso 2
var curso2 = Curso()
var nota2 = Notas()
curso2.nombre = "Desarrollo de aplicaciones moviles Avanzado"
nota2.promedioTeo = 16.4
nota2.promedioLab = 10
curso2.notas = nota2

//curso a lista
cursos.append(curso2)

var curso3 = Curso()
var nota3 = Notas()
curso3.nombre = "Desarrollo de aplicaciones web Avanzado"
nota3.promedioTeo = 19.5
nota3.promedioLab = 11
curso3.notas = nota3

//curso a lista
cursos.append(curso3)

//instancia alumno
var alumno = Alumno(nombre: "Juan Perez", cursos: cursos)
var alumno1 = Alumno(nombre: "Juan Medina", cursos: cursos)

//lista de alumnos
var alumnos = [Alumno]()
alumnos.append(alumno)
alumnos.append(alumno1)

//lista de alumnos
for alumno in alumnos {
    print("- - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
    print("Alumno: \(alumno.nombre)")
    alumno.listaCursosNotas()
    alumno.fin()
    print()
}


