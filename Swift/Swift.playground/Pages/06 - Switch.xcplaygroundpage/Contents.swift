//: [Previous](@previous)

// Switch case simples
let value = true

switch value {
case true:
  print("👍🏻 Verdadeiro")
  print("Deu certo!")
  print("Funcionou")
case false:
  print("👎🏻 Falso")
}

//Multiplas opções utilizamos o default
let name = "Paulo"

switch name {
case "Paulo":
  print("Bem vindo Paulo")
case "João":
  print("Bem vindo João")
case "Bruno":
  print("Bem vindo Bruno")
default:
  print("⚠️Opção não encontrada!")
}

// Parar execução com a palavra break. Com a palavra fallthough continua sendo executado
let num = 2

switch num {
case 1:
  print("Opção: 1")
case 2:
  print("Opção: 2")
  fallthrough
case 3:
  print("Opção: 3")
default:
  print("⚠️Opção não encontrada!")
}

//Compound cases
let num1 = 6
switch num1{
case 1,3,5:
  print("Número impar")
case 2,4,6:
  print("Número par")
default:
  print("⚠️Opção não encontrada!")
}

// É Case sensitive
let valueString = "A"

switch valueString{
case "A", "a":
  print("Letra A")
case "B", "b":
  print("Letra B")
case "C":
  print("Letra C")
default:
  print("⚠️Opção não encontrada!")
}

// Validando cases dentro de um range

let num2 = 102

switch num2{
case 0:
  print("Nada")
case 1...9:
  print("Pouco")
case 10...99:
  print("Muito")
  
  // Utilizando uma expressão condicional
case let number where number == 100:
  print("Limite Máximo")
  
  // Podemos utilizar o anderline para omitir a criação da variável e utilizar o valor do switch
case _ where num2 == 102:
  print("Passou do limite Máximo!")
default:
  print("⚠️Opção não encontrada!")
}

// Com tuplas



let num3 = (10,56) // tupla que simula as horas, 10:00

switch num3{
case (10, 0...30):
  print("Tá cedo!")
case (10, 31...49):
  print("Quase na Hora!")
case (let hora, let minutos) where hora == 10 && minutos == 50:
  print("Começou!")
case (10,51...59):
  print("Está Atrasado!")
default:
  print("⚠️Opção não encontrada!")
}




//: [Next](@next)
