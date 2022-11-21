//: [Previous](@previous)

var students = ["Alessandre", "Bruna", "Mike", "Silvana", "Silvia" ]

students[0] = "Alessandre Livramento"
students.append("Mário")

print(students)


//#1 Forma de inicializar um array
var fruits1: [String] = []

//#2 Forma de inicializar um array
var fruits2 = [String]()

//#3 Forma de inicializar um array e oficial
var fruits3 = Array<String>()


var list = ["a", "e", "i", "o", "u"]

///MONITORAR TAMANHO
list.capacity
list.reserveCapacity(10)

///GERAR NOVO ARRAY
var newArray: [String] = []
newArray.append(contentsOf: list) //Insere todos elemento do array list no newArray

var newArray1: [String] = []
newArray1.append(contentsOf: list[0...3]) //Insere os elementos da posição 0 até a 3 do array list no newArray1

///INVERTER POSIÇÕES
list.swapAt(0, 1)

///PRIMEIRO/ÚLTIMO
var primeiro = list.first ?? "Não existe"
var ultimo = list.last ?? "Não existe"

///VERIFICA VALOR
list.contains("u") // retorna true se encontra e false senão

///INSERIR EM UMA INDEX ESPECÍFICA
list.insert("opa", at: 2) // insere  opa no lugar de i que é o indíce de numero 2

///REMOVER PRIMEIRO/ÚLTIMO ELEMENTO
list.removeFirst()
list.removeLast()

///REMOVER UM ITEM
list.remove(at: 2) // remove o elemento de indíce 2

///REMOVE
list.removeAll() // remove todos os elementos

///TOTAL
list.count // obtém a quantidade de elementos

//: [Next](@next)
