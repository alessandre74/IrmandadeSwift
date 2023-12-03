//: [Previous](@previous)

// Criando uma função nomeando um apelido para o argumento driver é o apelido
func start(driver suspect: String){
  
  if suspect == "Zé"{
    print("\(suspect) ligou o carro! 🚗 Vrummm.. 💨")
  }else {
    print("Socorro! Pega ladrão 🚨")
  }
  
}

start(driver: "Zé")

// Criando uma função e omitindo o apelido com anderline
func start(_ suspect: String){
  if suspect == "Zé"{
    print("\(suspect) ligou o carro! 🚗 Vrummm.. 💨")
  }else {
    print("Socorro! Pega ladrão 🚨")
  }
}
start("Zé")

// Criando uma função com mais de um argumento, validando e com o argumento hasGas como opcional atribuindo um valor padrão
func start(driver suspect: String, hasGas: Bool = true){
  if suspect != "Zé" {
    print("Socorro! Pega ladrão 🚨")
    return
  }
  
  if hasGas{
    print("\(suspect) ligou o carro! 🚗 Vrummm.. 💨")
  }else{
    print("Deu ruim, acabou a gasolina.")
  }
}

start(driver: "Zé")

// Todo argumento dentro da função é uma constante então não tem como alterar seu conteúdo, podemos resolver esse problema com a palavra inout na frente do argumento na função e um & em frente o valor do argumento na chamada da função

var person = "Alessandre"
func people(driver:inout String){
  driver = "Alessandre Livramento"
  print("O nome Alessandre passado como argumento só pode ser alterado para \(driver) devido a palavra inout e o E comercial")
}

people(driver: &person)


//Funções com retorno

//#1
func calculateAplha(_ a: Int, _ b: Int)-> Int {
  return (a * b) / 2
}

func calculateOmega(_ a: Int, _ b: Int, _ c:Int) -> Int {
  return (a * b) / c
}

var total = calculateAplha(9, 4)
print(total)

//#2
func transform(_ text: String)-> String{
  var result = text.uppercased()
  result.removeFirst()
  result.insert("➡️", at: result.startIndex)
  result.removeLast()
  result.insert("✅", at: result.endIndex)
  return result
}

var leo = "* leOnARdo faGUndes *"
leo = transform(leo)

var gabi = "@ gABRIela pereira de BARRos _"
gabi = transform(gabi)

print(leo)
print(gabi)

//#3 retorno com tuplas
func calculate ()-> (numero: Int, description: String){
  return (7,"DeuBom!!")
}

var result = calculate()
print(result.numero)
print(result.description)

//#4 Uma função dentro da outra

func transformText(_ text: String)-> String?{
  
  func validate(_ value:String)-> Bool{
    if value.count < 5 {
      return false
    }
    return true
  }
  
  if !validate(text){
    return nil
  }
  
  return text.uppercased()
}

var resultText = transformText("belinha")
print(resultText ?? "SEM RETORNO")


// ------ DICAS DE FUNÇÕES ------
// * nome claro e consistente
// * um objetivo
// * poucos parâmetros, no máximo 3 parâmetros, mais que isso tentar quebrar em outras funções
// * tamanho pequeno do bloco da função

func delete(){
}

func save_(){
}

func copy (){
}

// sobrecarga

func jump(){
  
}

func jump(height: Int){
  
}

func jump(height: Int, speed: Double){
  
}

// está errado pois uma função tem que um único objetivo então a função abaixo daria para dividir em 3 funções
func updateAndSave(){
  //update
  //validate
  //save
}

func update(){
  
}

func validate(){
  
}

func save(){
  
}

//: [Next](@next)
