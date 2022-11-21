//: [Previous](@previous)

import Foundation

//Na maioria das vezes vamos utilizar o for in pois nele é possível ter mais controle do loop, por conta do break e continue.


var numeros = ["Um", "Dois", "Três", "Quatro"]


//For Each, não podemos utilizar o break e continue, porém podemos utilizar o return que funciona semelhante ao conitnue.
print(" For Each")

numeros.forEach { numero in
  if numero.contains("s"){
    return
  }
  print("Conteúdo Atual do número: \(numero)")
}

//For In, podemos utilizar o break e continue, porém não podemos utilizar o return.
print("\n For In")

for numero in numeros {
  if numero.contains("s"){
    continue
  }
  print("Conteúdo Atual do número: \(numero)")
}

//: [Next](@next)
