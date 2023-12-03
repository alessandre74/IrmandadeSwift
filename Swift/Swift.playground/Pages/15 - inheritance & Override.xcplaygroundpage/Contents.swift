//: [Previous](@previous)

//A palavra reservada final em frente a class faz com que a classe não posso ser herdada por nenhuma outra classe
/* =====================================================================================================*/

//Pai | Superclass Ou Base Class
class Machine{
  var weight = Int()
}

//Filho | Subclass
class Device{
  var storage = Int()
  var serialNumber = Int()
  var model = String()
  var systemVersiob = String()
  
  //Podemos utilizar no método a palavra reservada final, assim esse método não podera ser sobrescrito
  func upgrade(){
    self.storage += 1
    print("Upgrade realizado! Espaço: \(storage)GB")
  }
}

//Neto | SubClass
final class IPhone: Device{
  var hasFaceID = Bool()
  
  //Se o método da classe pai for muito parecido o qual queremos sobrescrever poder aproveitar a classe pai e incrementar
  override func upgrade() {
    self.storage += 15
    super.upgrade()
//    self.storage += 16
//    print("😎📱 Upgrade realizado! Espaço: \(storage)GB")
  }
}

//Neto | Subclass
final class Watch: Device{
 var hasLTE = Bool()
}

//---------------------------------------------------//
var myPhone = IPhone()
myPhone.storage = 16
myPhone.upgrade()

/* =====================================================================================================*/

class Vehicle{
  var power = Int()
  var passangers = Int()
  
  //Quando utilizamos heranças estamos compartilhando também os inicializadores. Se colocarmos a palavra reservada required em frente ao init da classe pai, as classes filhas sermão obrigadas a implementar esse init, mas mesmo assim elas poderão ter outros init
  required init(power:Int, passangers: Int){
    self.power = power
    self.passangers = passangers
  }
}

class Car:Vehicle{
  var model = String()
  
  //Podemos fazer sobrescrita de propriedades
  override var power: Int{
    didSet{
      super.power = 50
    }
  }
  //Quando fizer a sobrescrita de um init que foi herdado, é preciso inicializar a superclass para não haver problemas.
//  override init(power: Int, passangers: Int) {
//    super.init(power: power, passangers: passangers)
//    self.model = "SEM MODELO"
//  }
  
  //Implementando o init requerido pela classe pai
  required init(power: Int, passangers: Int) {
    super.init(power: power, passangers: passangers)
    self.model = "SEM MODELO"
  }
  
  // Como aqui estamos exigindo a propriedade model para esse init não faz sentido fazer a sobrescrita então retirarmos a palavra reservada override e o init será excluivo da classe carro mas mesmo assim temos que inicializar a superclass
  init(power: Int, passangers: Int, model: String){
    super.init(power: power, passangers: passangers)
    self.model = model
  }
}

//---------------------------------------------------//
var ka = Car(power: 200, passangers: 5, model: "Ford Ka")
print(ka.model)


/* =====================================================================================================*/

class Vehicle1{
  var power = Int()
  var passangers = Int()
  
  init(power:Int, passangers: Int){
    self.power = power
    self.passangers = passangers
  }
}

class Car1: Vehicle1{
  var model = String()
  
  //A palavra reservada convenience pode ajudar a evitar muita dor de cabeça
  convenience init(power: Int, passangers: Int, model: String) {
    self.init(power: power, passangers: passangers)
    self.model = model
  }
}

var fusca = Car1(power: 50, passangers: 4, model: "VW Fusca 1600")
print(fusca.model)
//: [Next](@next)
