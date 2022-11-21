//: [Previous](@previous)

//for item in 0...70{
//  print("\(item) - Eu não posso xingar a professora...")
//}

var friends = ["Biel", "Nina", "Tuta", "Zé"]

//Obter indice e valor do array

for (index, value) in friends.enumerated(){
  print("index: \(index) - value: \(value)")
}

/// Dentro do bloco for in o friend é uma variável constant então não pode ser alterada no processo do loop
for friend in friends {
  print("Bom dia \(friend.lowercased())")
}

print("=============================================")

///Para acessar o indice abaixo criamos o for in necessário
for index in 0..<friends.count{ //Pega a quantidade do array mas como o array começa com zero temos que utilizar o < no lugar do último ponto
  print("Bom dia \(friends[index])")
  
}

print("=============================================")

/// Podemos filtrar através da clausula where
for friend in friends where friend.contains("a") {
  print("Bom dia \(friend)")
}

print("=============================================")

var total = 0

for friend in friends{
  if friend.contains("i"){
    total += 1
    print("Bom dia \(friend)")
  }
}

print(total)


print("=============================================")

/// Podemos interromper o ciclo do loop forçadamente caso detecte alguma coisa em uma condição
for friend in friends {
  if friend.contains("t"){
    break
  }
  
  print("Bom dia \(friend)")
}



//: [Next](@next)
