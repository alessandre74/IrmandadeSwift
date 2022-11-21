var carOwner: String?
carOwner = "Marcelo Lima"

//Destruir valores só atribuir o nil
//carOwner = nil

var carWeight: Int?

//#1 a exclamação força o desembrulhar da variável, porem se não possuir nada vai dar erro. Nome utilizado Forced Unwrapping.
print("#1 => \(carOwner!)")

let valor = "Não existe"

//#2 Forma de desembrulha o valor, se existir vai imprimir o valor da váriavel senão a expressão depois das ??. Nome utilizado Nil coalescing operator.
print("#2 => \(carOwner ?? valor)" )

//#3 Forma, Manual Unwrapping.
if carOwner != nil{
  print("#3 => EXISTE")
}else{
  print("#3 => NÃO EXISTE")
}

//#4 Forma mais utilizada e podemos fazer múltiplas validações. Sempre utilizar o mesmo nome para não se perder, a vírgula que separa uma expresão da outra é como se fosse o and/&&, se uma delas fallhar tudo vai falhar. Nome usada para essa forma Optional Binding ou (if/let).
if let carOwner = carOwner, let carWeight = carWeight {
  print("#4 => \(carOwner)" )
  print("#4 => \(carWeight)")
} else {
  print("#4 => NÃO EXISTE")
}

