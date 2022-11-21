//: [Previous](@previous)

import Foundation


protocol Doctor{
  func diagnose()
  
}

struct Person: Doctor {
 
  var name : String
  var age: Int
  
  func diagnose() {
    print("🧐 Diagnosticando um paciente...")
  }
}

//------------------

var paulo = Person(name: "Paulo Hazi", age: 29)

paulo.diagnose()

//: [Next](@next)
