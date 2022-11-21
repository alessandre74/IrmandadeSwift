//: [Previous](@previous)

/// Criando uma tupla sem definir tipos pois o swift ja entende o tipo do conteudo
var tupla1 = ("Valor0", "Valor1", 1)
tupla1.0 // Acessando o conteúdo da posição 0

/// Criando uma tupla e definindo tipos
var tupla2: (String, String) = ("Valor0", "Valor1")
tupla2.1 // Acessando o conteúdo da posição 1

/// Criando uma tupla definindo tipo e nomeando na declaração dos valores
var tupla3: (String, Int) = (nome: "João", idade: 26)
tupla3.1 // Acessando o conteúdo da posição 1

/// Criando uma tupla e nomeando os elementos na declaração dos tipos
var tupla4: (nome: String, idade: Int) = ("Mike", 40)
tupla4.nome // Acessando o conteúdo de nome


/// Podemos Criar uma tupla conforme abaixo:

var pessoa : (nome: String, idade:Int) = ("João", 27)
var pessoas = (joao: pessoa, maria:(nome: "Maria", idade: 31), "fim da tupla")

pessoas.joao
pessoas.maria.idade
pessoas.2

//: [Next](@next)
