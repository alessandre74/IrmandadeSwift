//: [Previous](@previous)

struct Doctor1 {
  var name = String()
  var age = Int()
}

// como estamos instânciando um objeto de uma struct como let as propriedades que estão na struct também serão constantes assim não teremos acesso para alterar seu valor
let boss1 = Doctor1()
//boss1.name = "Paulo Reis" // da erro de propriedade é uma constante

/* ===================================================================================================*/

// Com classes não teremos esse proplema já que ela é uma reference-type
class Doctor2 {
  var name = String()
  var age = Int()
}

let boss2 = Doctor2()
boss2.name = "Paulo Reis"
boss2.age = 45

/* ===================================================================================================*/

/**
 No momento que uma instância é gerada ..
 Todas as stored properties devem ter
 um valor inicial definido
 */

class Doctor3{
  var name: String
  var age: Int
  var adress: String?
  
  
  init(name:String, age:Int){
    self.name = name
    self.age = age
  }
}

// Não precisamos cria um init na struct pois ela cria atumomático por padrão
struct Doctor4{
  var name: String = ""
  var age: Int = 0
  var adress: String = ""
}
var boss4 = Doctor4()

/* ===================================================================================================*/

// Proprierties Observable - monitorando qualquer alteração no valor de uma propriedade. Não fa sentido em monitorar propriedades contanstes, ou seja, let pois ela inicia com um valor e ficara com mesmo para sempre.
struct Doctor5{
  /**
   Monitora o que vai acontecer com o valor da propriedade. newValue é padrão, mas podemos mudar o nome incluindo lado do willset entre parenteses com novo nome. Podemos obter o valor antes da mudança com o nome da propriedade. Podemos usar o newValue somente para consulta e nunca modificar. DidSet só temos acesso ao valor antigo com oldValue, não podemos fazer alterações, porém como ele é disparado depois da modificação, conseguimos alterar o conteúdo atual da propriedade
   */
  var name: String{
    //Dispara evento antes da alteração
    willSet{
//      print("[WILL] o valor vai mudar de \(name) para \(newValue)")
    }
    //Dispara evento após a alteração
    didSet{
//      print("[DID] o valor mudou de \(oldValue) para \(name)")
  
      if name.contains("👎🏻"){
//        print("🤦‍♀️: Nem pensar! Cancelar a contratação.")
        name = oldValue
      }
    }
  }

  var age: Int
  var adress: String?
}

var boss5 = Doctor5(name: "Paulo Reis", age: 45)
boss5.name = "Rodrigo Teih 👎🏻"


//print(" \n 🏥 DIRETOR: \(boss5.name)")


/* ===================================================================================================*/

struct Doctor6{
 
  //Type properties - Também podemos criar observers willSet e didSet para monitorar os valores
  static var password = "YTGHGT"{
    didSet{
      print("⚠️ A senha de doutores mudou")
    }
    
  }  //Não é mais uma propriedade de instância e sim de tipo
  
  static var total = 0 // propriedade criada para calcular o total de doutores no hospital
  
  //Stored Properties
  var name: String
  var age: Int
  
  //Init customizado sempre que um doutor seja inserido no sistema o valor da propriedade total será atualizado
  init(name: String, age: Int){
    self.name = name
    self.age = age
    
    Doctor6.total += 1
  }
}


var joao = Doctor6(name: "Joao Carlos", age: 65)
var maria = Doctor6(name: "Maria Clara", age: 53)
var jose = Doctor6(name: "Paulo Reis", age: 33)

//print("Doutores: \(joao.name), \(maria.name), \(jose.name)")

//Acessando a proriedade password direto com a strunc pois agora ela é uma propriedade de tipo. Como ela é uma propriedade de tipo podemos acessar direto sem criar uma instância.
Doctor6.password = "UUYUYHH"
print("🥼 A senha dos doutores é: \(Doctor6.password)")
print("🥼 Total de \(Doctor6.total > 1 ? "doutores" : "doutor"): \(Doctor6.total)")


//: [Next](@next)
