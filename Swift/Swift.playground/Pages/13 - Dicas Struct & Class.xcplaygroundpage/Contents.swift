//: [Previous](@previous)

/**
 Dicas:
 
 - Controle a complexidade do código (pedaços)
 - Um arquivo por entidade (s/ import)
 - Crie inicializadores que façam sentido
 - Valorize o processo de Abstração
 - Na dúvida comece com uma struct
 */

class Car{
  var model = String()
}

class Person{
  // Properties
  var name = String()
  var cpf = Int()
  var car = Car()
  
  //Initializers
  init(name: String){
    self.name = name
  }
  
  convenience init(name: String, cpf: Int, car: Car){
    self.init(name: name)
    self.cpf = cpf
    self.car = car
  }
  
  //Methods
  func park(){
    print("\(name) deu a partida no carro \(car.model)")
  }
}






//: [Next](@next)
