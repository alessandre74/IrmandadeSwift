//: [Previous](@previous)

import Foundation

class Person{
  var name = String()
  var cpf = Int()
  
  
  // Inserindo a palavra convenience mais o self.init() podemos instânciar uma classe sem inicializar ela no construtor
  convenience init(name: String, cpf: Int) {
    self.init() // nessa ocasião sem essa linha o self nem existiria
    self.name = name
    self.cpf = cpf
  }
}

// ------------------------------
var pedro = Person(name: "Pedro Lucas", cpf: 02387645323)

print(pedro.name)

var bruna = Person()





//: [Next](@next)
