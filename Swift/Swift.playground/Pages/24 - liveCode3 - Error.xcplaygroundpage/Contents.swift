//: [Previous](@previous)

import Foundation

/**
 1 - Erro não é algo ruim, se...
 2 - o `error` não é algo tão ruim quanto o `fatalError`
 
 a - Mapear os possíveis erros do seu projeto.
 b - Encontrar trechos críticos que podem disparar esses erros.
 c - Tratar esses erros que foram encontrados.
 
 `enum`
 - Mapear possíveis erros.
 `throw`
 - Dispara erros conhecidos e tratáveis
 `throws`
 - Sinaliza uma função de alto risco, que dispara erros mas não se responsabiliza. Só existe em funções que não tem o tratamento, caso tenha o docatch não precisa do throws.
 `try`
 - Tenta executar um trecho de código de alto risco.
 `docatch`
 - Intercepta erros para serem tratados, criando assim regiões seguras no código.
 */

//Melhor utilizar o docatch direto sem utilizar o throws onde ele passa o erro pra frente, só se for necessário utilizar o throws.

enum FruitError: Error {
  case invalidValue
  case positionNotFound
}

func getFruit(position: Int) throws -> String?{
  let fruits = ["maçã" , "pera" , "laranja" , "melancia"]
  
  // Valida valor --
  guard position >= 0 else { throw FruitError.invalidValue }
  
  // Valida posição --
  guard fruits.indices.contains(position)else { throw FruitError.positionNotFound }
  
  // Retorno --
  return fruits[position]
}
//--------
do{
  let myFruit =  try getFruit(position: 10)
  print(myFruit ?? "unknown")
}catch FruitError.invalidValue{
  print("❌ Error: Valor inválido!")
}catch{
  print("❌ Error: \(error)")
  // ou
  print("❌ Error: \(error.localizedDescription)")
}
//: [Next](@next)
