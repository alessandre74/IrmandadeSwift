//: [Previous](@previous)

// classes sempre começam com letra maiúscula

class Car{
  var model = String()
}

class Person{
  var name = String()
  var cpf = Int()
  var car = Car()
  
  func park(){
    print("Estacionou o \(car.model)")
  }
  
  func leave(){
    print("\(name) saiu com o \(car.model)")
  }
}

// -----------------------


// Bruna
var ka = Car()
ka.model = "FORD Ka+"

var bruna = Person()
bruna.name = "Bruna Pereirra"
bruna.cpf = 09897766776
bruna.car = ka

print("NOME:\(bruna.name) - CARRO:\(bruna.car.model)")

print("")

// Pedro
var fusca = Car()
fusca.model = "VW Fusca 1.6"

var pedro  = Person()
pedro.name = "Pedro Lucas"
pedro.cpf = 98987667676
pedro.car = fusca
pedro.park()
pedro.leave()

print("NOME:\(pedro.name) - CARRO:\(pedro.car.model)")


//: [Next](@next)
