//: [Previous](@previous)

protocol Employee{
  func startWork()
}

struct Secretary: Employee{
  
  func replyEmails(){
    print("👩‍💻 ✉️ - Respondendo e-mails")
  }
  
  func startWork() {
    print("👩‍💻 ⏰ - Iniciando o expediente!")
  }
}

//--------------------------------------------
var maria: Employee = Secretary()

//Checar
if maria is Secretary{
  print("✅")
}


//--------------------------------------------
var laura = Secretary()

//Alterar
var emp = laura as Employee
emp.startWork()

//--------------------------------------------
var ana: Employee = Secretary()

//Alterar
var sec = ana as! Secretary






//: [Next](@next)
