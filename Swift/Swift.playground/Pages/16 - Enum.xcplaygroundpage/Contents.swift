//: [Previous](@previous)
//

/* Enumeradores */
enum BeltColor{
  case white
  case blue
  case purple
  case brow
  case black
  case red
}

var myBelt: BeltColor = .black

print("Enumeradores")
print("A minha faixa no Jiu Jitsu é: \(myBelt)")
print(" ")
/*
 Enumeradores do tipo Int. Definindo valor fixo para cada case de um enum, colocando os dois
 ponto e o tipo, estamos habilitando o enum a trabalhar com valores brutos ou conhecidos como
 raw values. No momento que habilitamos essa nova funcionalidade o nosso enumerador ganhou uma
 propriedade chamada de rawValue, pois cada enumerador terá um número começando do 0. Podemos
 modificar manualmente o rawValue de um enum atribuindo ao lado de cada enumerador o seu novo
 valor. Se colocarmos um valor somente para o primeiro no caso o valor 10, os próximos contuaram
 a seguência no caso 11, 12 e assim por diante. Mas se trabalhar em seguência não for interessante
 só colocar um valor para cada enumerador. Depois de definido um rawValue não pode ser modificado.
 Quando habilitamos o rawValue, esse enum ganhou um novo inicializador. Sempre que inicializamos
 um enumerador através de um rawValue o resultado é um valor opcional e devemos garantir que o
 valor desejado é um valor que existe com exclamação. Quando for trabalhar com switch que vai
 fazer a leitura de um enumerador criar o switch nome da variavel e as chaves {} que o proprio
 xcode vai se encarregar de completar os cases.
 */
enum BeltColor1: Int{
  case white = 10
  case blue = 33
  case purple = 434
  case brow = 2212
  case black = 989
  case red = 656
}

var myBelt1 : BeltColor1 = BeltColor1(rawValue: 10)!

print("Enumeradores Int")
print("A minha faixa no Jiu Jitsu é: \(myBelt1)")

switch myBelt {
case .white, .blue:
  print("Iniciante")
case .purple, .brow:
  print("Intermediário")

default:
  print("⚠️ Opção não encontrada!")
}

print(" ")


/* Enumeradores tipo string. Quando não definimos o valor deste tipo de enumerador vai ser gerado o mesmo nome de cada enumerador */
enum BeltColor2: String{
  case white = "Branco"
  case blue
  case purple
  case brow
  case black
  case red
}

var myBelt2 : BeltColor2 = BeltColor2(rawValue: "black")!
print("Enumeradores String")
print("A minha faixa no Jiu Jitsu é: \(myBelt2)")
print(" ")

/*
 Enumeradores com valores associados podem sofrem alteração, sem qualquer tipo de restrição.
 Podemos imaginar os enumeradores com valores associados como se fosse uma função que enviamos
 argumento onde definimos vários argumentos separados por vírgula.
 */
enum BeltColor3{
  case white
  case blue
  case purple
  case brow(Int)
  case black(String, Int) //associated values
  case red
}

var myBelt3 : BeltColor3 = .brow(2)
//myBelt3 = .black("4 grau")

print("Enumeradores com valores associados")
switch myBelt3{

case .brow(let years):
  print("Faixa marrom a \(years) \(years > 1 ? "anos!": "ano!")")
case .black(let degree, let years):
  print("Faixa preta \(degree) a \(years) \(years > 1 ? "anos!": "ano!")")
default:
  print("⚠️ Opção não encontrada!")
}
print(" ")

/* Criando um enumerador com Protocolo CaseIterable.
 A enumeration é como a struc é value-type armazena
 diretamente a informação e consegue manipular a
 informação sem nenhuma interferência. As enumarations
 possui propriedades, inicializadores e métodos.
 */
enum BeltColor4: CaseIterable{
  case white, blue, purple, brow, black, red
  
  // Properties
  static var lastUpdate = String()
  
  // Initializers
  init(years: Int){
    if years <= 1{
      self = .white
    }else {
      self = .blue
    }
  }
  
  // Methods
  func validate(){
    if self == .red{
      print("⛔️ - Apenas os membros da família Gracie podem ter a faixa vermelha.")
    }
  }
}

print("Enumeradores CaseIterable")
var list: [BeltColor4] = BeltColor4.allCases

for color in list {
  print("Valor encontrador: \(color)")
}
print("Existem \(list.count) faixas no Jiu Jitsu")
print(" ")


print("Enumeradores CaseIterable - Properties")
BeltColor4.lastUpdate = "17/07/2022"// Properties
print(BeltColor4.lastUpdate)
print(" ")

print("Enumeradores CaseIterable - Initializers")
var studentColor1 = BeltColor4(years: 3)
print("O Aluno é faixa: \(studentColor1)")
print(" ")

print("Enumeradores CaseIterable - Methods")
var studentColor2 = BeltColor4.red
studentColor2.validate()
print(" ")




//: [Next](@next)
