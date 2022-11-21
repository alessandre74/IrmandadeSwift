//: [Previous](@previous)

/**
 Struct
 -----------------------------------
  - Value type, Copy, Renewed
 -----------------------------------
  > auto init
 Recebe o init automatico, e ainda podemos inicializar o init com todas propriedades ou somente algumas. Mas o processo de ter um init customizado é o mesmo de uma classe, mas quando criamos um init customizado perdemos o poder do init automatico, utilizando todas ou algumas propriedades.
 
 > mutating
 Para poder alterar uma propriedade em um método temos que utilizar a palavra reservada mutating exclusivo da struct. Se estivermos somente consumindo o valor da propriedade no método então não preciamos utilizar a palavra reservada.
 
 */

struct Computer1 {
  var model = String()
  var storage = Int()
  var isOn = false
  
  //
  mutating func turnON(){
   self.isOn = true
  }
}

var mac1 = Computer1(model: "Macbook Pro 16", storage: 500)
print(mac1)



/**
 Class
 -----------------------------------
  - Reference type, Share, Mutable
 -----------------------------------
 > convenience
 Palavra exclusiva da classe onde podemos ou não inicializar um construtor com sua propriedades
 
 > description
 Como a classe não guarda o valor e sim a referência não conseguimos printar o valor de uma clase ex. print(mac2) somente com struct conseguimos fazer isso, mas com description podemos resolver esse problema e chegar bem perto que uma struct faz. Podemos alterar o comportamente da classe com o protocolo CustomStringConvertible e criando uma váriavel description e dentro dela retorna a descrição desejada.
 
 > Inheritance
 
 > Casting
 
 > Deinit
 Nos inicializadores é quando criamos um objeto e no deinit é quando destruimos um objeto. Em alguns casos o processo de destruição acontece porque a máquina detectou que é um objeto que não utilizamos mais. Para podermos dar um exemplo e podermos destruir esse objeto temos que fazer com que o objeto seja um opcional para podermos atribuir nil a ele.
 
 
 */


class Computer2: CustomStringConvertible {
  var description: String {
    return "[COMPUTER] MODELO: \(self.model) - STORAGE: \(self.storage)"
  }
  
  var model = String()
  var storage = Int()
  
  convenience init(model: String, storage: Int){
    self.init()
    self.model = model
    self.storage = storage
    
    print("Objeto criado com sucesso ✅")
  }
  
  deinit {
    print("Objeto destruido com sucesso 💥")
  }
}

// Para poder
var mac2: Computer2? = Computer2(model: "Mac mini", storage: 512)

print(mac2 ?? "Não existe")

mac2 = nil












//: [Next](@next)
