//: [Previous](@previous)

//Dicionários que nunca sofreram mutação, ou seja, adicionar, alterar ou remover, sempre utilizar constantes let

// Como inicializar um Dictionary vazio

var pessoas1: [String: String] = [:]
var pessoas2 = [String: String]()
var pessoas3 = Dictionary<String, String>()
var pessoas4: [String: String]
pessoas4 = [:]

pessoas1["nome"] = "Mike"
pessoas2["nome"] = "Bruna"
pessoas3["nome"] = "Silvana"
pessoas4["nome"] = "Silvia"

print(pessoas1)
print(pessoas2)
print(pessoas3)
print(pessoas4)

var states1 = [
  "DF":"Distrito Federal",
  "RJ": "Rio de Janeiro",
  "SP": "São Paulo"
]

var states2 = [
  "DF":"Distrito Federal",
  "RJ": "Rio de Janeiro",
  "SP": "São Paulo"
]

// ------------------------------

///As duas formas abaixo o que vai determinar MOFIFICAR ou INSERIR será a existência ou não da chave na coleção

states1.count // verifica o tamanho do dictionary
states1.isEmpty // verifica se esta vazio ou não

if states1.isEmpty{
  print("⚠️ O dicionário está vazio!")
}


//Percorrendo todo dicionário com sua identificação e valor
for item in states2{
  print("➡️ Item encontrado: \(item)")
}

//Percorrendo somente os valores de cada item acessando a propriedade values
for value in states2.values{
  print("➡️ Item encontrado: \(value)")
}

//Percorrendo somente as chaves de cada item acessando a propriedade keys
for key in states2.keys{
  print("➡️ Item encontrado: \(key)")
}

///#1 Forma de modificar, inserir ou remover no dictionary

//MODIFICAR
states1["SP"] = "Terra da Garoa"

//INSERIR
states1["MG"] = "Minas Gerais"

//REMOVER
states1["SP"] = nil

print(states1)


///#2 Forma de modificar, inserir ou remover no diactionary

//MODIFICAR - existindo o valor ele modifica
states2.updateValue("Mogi das Cruzes", forKey: "SP")

//INSERIR - não existindo o valor e insere
states2.updateValue("São José", forKey: "SC")

//REMOVER retornar o valor que foi removido da coleção, senão encontrar não retonar nada
if let removeValue = states2.removeValue(forKey: "SP"){
  print("🔥 O item \(removeValue) foi REMOVIDO!")
}else {
  print("⚠️ O item não foi LOCALIZADO!")
}

//O método updateValue retorna um valor opcional então conseguimos identificar se foi uma modificação ou uma inserção
if let oldValue = states2.updateValue("Curitiba", forKey: "PR"){
  print("✏️ O item \(oldValue) foi MODIFICADO!")
}else {
  print("🆕 O item foi INSERIDO!")
}


print(states2)




//: [Next](@next)
