import UIKit

class Tienda {
    var ruc: String
    var nombre: String
    var ganancia: Double
    var productos: [Producto]
    var clientes: [Cliente]
    
    init(ruc: String, nombre: String, ganancia: Double) {
        self.ruc = ruc
        self.nombre = nombre
        self.ganancia = ganancia
        self.productos = []
        self.clientes = []
    }
    
    func agregarProducto(producto: Producto) {
        productos.append(producto)
    }
    
    func agregarCliente(cliente: Cliente) {
        clientes.append(cliente)
    }
    
    func listarProductos() {
        print("Lista de productos:")
        for producto in productos {
            print("\(producto.codigo) - \(producto.nombre) - \(producto.precio)")
        }
    }
    
    func listarClientes() {
        print("Lista de clientes:")
        for cliente in clientes {
            print("\(cliente.dni) - \(cliente.nombre)")
            print("Productos comprados:")
            for producto in cliente.productos {
                print(" - \(producto.nombre)")
            }
            print("Total a pagar: \(calcularTotal(cliente: cliente))")
        }
    }
    
    func calcularTotal(cliente: Cliente) -> Double {
        var total: Double = 0
        for producto in cliente.productos {
            total += producto.precio
        }
        total += total * ganancia // Se aplica la ganancia a todo el total
        return total
    }
}

class Producto {
    var codigo: String
    var nombre: String
    var precio: Double
    
    init(codigo: String, nombre: String, precio: Double) {
        self.codigo = codigo
        self.nombre = nombre
        self.precio = precio
    }
}

class Cliente {
    var dni: String
    var nombre: String
    var productos: [Producto]
    
    init(dni: String, nombre: String, productos: [Producto]) {
        self.dni = dni
        self.nombre = nombre
        self.productos = productos
    }
}

let tienda1 = Tienda(ruc: "123456789", nombre: "Tienda 1", ganancia: 0.1)

let producto1 = Producto(codigo: "P001", nombre: "Producto 1", precio: 10.0)
let producto2 = Producto(codigo: "P002", nombre: "Producto 2", precio: 20.0)

tienda1.agregarProducto(producto: producto1)
tienda1.agregarProducto(producto: producto2)

let cliente1 = Cliente(dni: "11111111", nombre: "Cliente 1", productos: [producto1])
let cliente2 = Cliente(dni: "22222222", nombre: "Cliente 2", productos: [producto1, producto2])

tienda1

