//: [Previous](@previous)


//Diferenças entre Struct e Class

//STRUCT
///#1 - VALUE-TYPE -> Criamos uma váriavel e quardamos o valor diretamente dentro da variável.
///#2 - COPY -> Copia/duplica o valor e não aponta para mesmo valor, pois foi copiado exclusivamente pra ela.
///#3 - RENEWED -> Uma struct não consegue ser alterada, ela destroi o valor atual e cria um novo.

//CLASS
///#1 - REFERENCE-TYPE -> Em vez de guardar o valor dentro da variável, ela guarda a referência do valor.
///#2 - SHARE -> Quando criamos uma váriavel com valor pré-existente, a nova variável esta apontando para o mesmo  endereço.
///#3 - MUTABLE -> Consegue sofrer alterações, mas o endereço continua ser mesmo.

class Casa{
  var area = Int()
}

class Pessoa{
  var casa = Casa()
}

//------------------------------------------------------
var cafofo = Casa()
cafofo.area = 15

var 👨‍🦰 = Pessoa()
👨‍🦰.casa = cafofo

var 👨🏼‍🦳 = Pessoa()
👨🏼‍🦳.casa =  👨‍🦰.casa
👨🏼‍🦳.casa.area = 500

print("CASA JOCA: \(👨‍🦰.casa.area) metros")
print("CASA VOVÔ: \(👨🏼‍🦳.casa.area) metros")






//: [Next](@next)
