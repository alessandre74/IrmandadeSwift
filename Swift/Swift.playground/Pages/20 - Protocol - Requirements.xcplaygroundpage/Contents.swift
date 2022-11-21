//: [Previous](@previous)

protocol Employee1{
  init(idCode: Int)
}

struct Secretary1: Employee1{
  init(idCode: Int) {
    print("🆕 Secretária criada! Matrícula: \(idCode)")
  }
}


//Struct que implementa um protocolo com propriedade com acessos get/set deve seguir exatamente conforme o protocolo, ou seja com a propriedade difinidade com var pois let como é uma constante dara erro pois o set é para alterar, mas se a propriedade do protocolo o acesso ter somente o get não tem problema implementar com let.
protocol Employee2{
  var name: String { get}
  var cpf: Int { get set}
}

struct Secretary2: Employee2{
  let name: String
  var cpf: Int
  
  
}





//: [Next](@next)
