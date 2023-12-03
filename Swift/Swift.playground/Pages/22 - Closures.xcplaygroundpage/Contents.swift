//: [Previous](@previous)

import Foundation

let maquina = {
  print("Mike")
}

var maquina2 = {}

maquina2 = maquina

maquina2()
maquina()

//Closures tem escopo como o if, o que está dentro do if não pode ser acessado fora, porém o que esta fora do if o if tem acesso, o mesmo acontece com closure, ela tem acesso o que está fora dela, porém o que está fora não pode acessar o que está dentro da closure.

let b = "b"

if true {
  print(b)
}


let closure = {
 print(b)
}


//Podemos retornar algo de dentro da closure com return.
let maquinaDeMilkShake: () -> String = {
  let milkShake = "Um milkShake simples"
  
  return milkShake
}

let copo = maquinaDeMilkShake()


print(copo)

//O return também serve para parar a execução
let returnParaExecucao: () -> String = {
  return "Parei aqui"
  
//  let naoParar = "Não parou"   // as próximas linhas depois do return como não seram executadas o proprio xcode já mostra um erro
//  return naoParar
}

print(returnParaExecucao())

//Como passa parametros para closure
let pessoa: (String, Int) -> String = { nome, idade in
  
  return "Meu nome é \(nome) e tenho \(idade) anos"
}

print(pessoa("Alessandre", 48))

//: [Next](@next)
