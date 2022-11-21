//: [Previous](@previous)

protocol Employee{
  
}

struct Manager: Employee{
  
}
struct Janitor: Employee{
  
}
struct Secretary: Employee{
  
}
struct Concierge: Employee{
  
}
struct Treasurer: Employee{
  
}


//----------------------------------------------
func register(emp: Employee){
  print("⏰ Horário registrado com sucesso! \(emp)")
}

var maria = Secretary()
register(emp: maria)




//: [Next](@next)
