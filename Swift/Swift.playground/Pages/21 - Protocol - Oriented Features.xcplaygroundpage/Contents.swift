//: [Previous](@previous)
protocol Athlete{
  func jump()
}


//Herança de protocolos, Employee está herdando tudo de Athlete
protocol Employee: Athlete{
  func startWork()
}

struct Secretary1: Employee, Athlete{
  func startWork() {
   print("👩‍💻 Iniciou o expediente")
  }
  
  func jump() {
    print("⛹🏼‍♀️ Pulou")
  }
}

//Função que só vai aceitar valores que estão em conformidade com os protocoles de Employee e Athlete
func play(emp: Employee & Athlete){
  emp.startWork()
 
}

//Herança protocolos com classes. Uma classe pode Herdar somente de uma super classe, mas pode herdar de vários protocolos

class Person1{}

class Secretary2: Person1, Employee, Athlete{
  func startWork() {
   print("startWork")
  }
  
  func jump() {
    print("jump")
  }

}

//Dependendo da situação podemos optar por trabalhar somente com protocolos

protocol Person2{}

struct Secretary3: Person2, Employee, Athlete{
  func startWork() {
    print("startWork")
  }
  
  func jump() {
    print("jump")
  }
}

//Muito comum utilizar protocolos em parceria com extension. Podemos adicionar funcionalidade em tipo nativos do swift com extension. Adicionamos abaixo ao tipo inteiro um função de smile/sorrir, então todo tipo inteiro agora terá essa funcionalidade.
extension Int{
  func smile(){
    print("😁")
  }
}

//-----------------
var value = Int()
value.smile()

//Podemos também extender de tipos próprios

struct Secretary4{
  let name: String
  var cpf: Int
}

extension Secretary4{
  func smile(){
    print("😁 \(self.name)")
  }
}

//Quando estamos trabalhando com protocolos podemos mover as implementações impostas para uma nova extension

protocol Employee1{
  func startWork()
  func replyEmails()
}

struct Secretary5{
  let name: String
  var cpf: Int
  
}


// Podemos levar a assinatura do protocolo para extension
extension Secretary5: Employee1{
  func replyEmails(){
    print("👩‍💻 ✉️ - Respondendo e-mails")
  }
  
  func startWork() {
    print("👩‍💻 ⏰ - Iniciando o expediente!")
  }
}


//Podemos criar uma extesion para um protocolo. No protocolo não definimos o corpo de método, mas com a extension podemos fazer para assim termos um método padrão para quem for implementar. Podemos criar novas funcionalidade na extension do protocolo mesmo que ela não seja um requerimento do protocolo como é o caso do metodo answerPhone()
protocol Employee2{
  func startWork()
  func replyEmails()
  func openCompany()
}

extension Employee2{
  func openCompany(){
    print("👤 🔑 - Abrindo a empresa!")
  }
  
  func answerPhone(){
    print("👤 ☎️ - (Alô?)")
  }
}


//O Método answerPhone não foi implementado pois não está sendo requerido no protocolo, mas a Struct Secretary6 herdar por extar na extension do protolo e mesmo assim podemos sobrecreve-lo
struct Secretary6: Employee2{
  func replyEmails(){
    print("👩‍💻 ✉️ - Respondendo e-mails")
  }
  
  func startWork() {
    print("👩‍💻 ⏰ - Iniciando o expediente!")
  }
  
  func answerPhone(){
    print("👤 ☎️ - (Bom dia em que posso ajudar?)")
  }
}

var maria = Secretary6()
maria.openCompany()
maria.answerPhone()






//: [Next](@next)
