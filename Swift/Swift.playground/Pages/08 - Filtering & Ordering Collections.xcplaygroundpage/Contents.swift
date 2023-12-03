//: [Previous](@previous)

var seqSort: [Int] = []
var seqFilter: [Int] = []


// preenchendo a sequencia com números aleatorios
for _ in 0..<20 {
  let elemento = Int.random(in: 0...100)
  seqSort.append(elemento)
  seqFilter.append(elemento)
}

//SORT
print("Sort Antes")
print(seqSort)
print(" ")

seqSort.sort { a, b in
 return a < b
}

print("Sort Depois")
print(seqSort)
print(" ")


//FILTER
print("Filter Antes")
print(seqFilter)
print(" ")

let seqFiltrada = seqFilter.filter { i in
  return i <= 10
}

print("Filter Depois")
print(seqFiltrada)
print(" ")

//DICTIONARY
var seqDicionario: [String: Int] = [:]

for j in 0..<12 {
  let elemento = Int.random(in: 0...100)
  seqDicionario.updateValue(elemento, forKey: String(j))
}

print("Dicionário Filter Antes")
print(seqDicionario)
print(" ")

let seqDicionarioFiltrado = seqDicionario.filter { i in
  return i.key == String(i.value)
}

print("Dicionário Filter Depois")
print(seqDicionarioFiltrado)
print(" ")


print("Dicionário Ordenado Antes")
print(seqDicionario)
print(" ")

let seqDicionarioOrdenado = seqDicionario.sorted{ a, b in
  return a < b
}

//let seqDicionarioOrdenado = seqDicionario.sorted(by: <)

print("Dicionário Ordenado Depois")
print(seqDicionarioOrdenado)
print(" ")

//: [Next](@next)
