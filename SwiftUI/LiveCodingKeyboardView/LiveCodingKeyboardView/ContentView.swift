//
//  ContentView.swift
//  LiveCodingKeyboardView
//
//  Created by Alessandre Livramento on 18/08/22.
//

import SwiftUI

//MARK: - Model
struct User{
  var name: String
  var password: String
  var code: Int
}

//MARK
enum Field{
  case name, password, code
}

//MARK: -- View
struct ContentView: View {

    var body: some View {
      //Keyboard1View()
      Keyboard2View()
      
    }
}

struct Keyboard1View: View {
  
  @State var name: String = ""
  @State var password: String = ""
  @State var code: Int = 0
  
  var body: some View {
    VStack {
      
      //Nome --
      TextField("Nome", text: $name)
        .padding()
        .background(.tertiary)
        .cornerRadius(10)
        .keyboardType(.alphabet)
      
      //Password --
      SecureField("Senha", text: $password)
        .padding()
        .background(.tertiary)
        .cornerRadius(10)
        .keyboardType(.alphabet)
      
      //Cpf --
      TextField("CPF", value: $code, format: .number)
        .padding()
        .background(.tertiary)
        .cornerRadius(10)
        .keyboardType(.numberPad)
      
      
    }
    .padding()
  }
}

struct Keyboard2View: View {
  
  @State var user = User(name: "", password: "", code: 0)
  
 @FocusState var selectedField: Field?
  
  var body: some View {
    
    
    ZStack {
      VStack {
        
        //Nome --
        TextField("Nome", text: $user.name)
          .keyboardType(.alphabet)
          .modifier(EstiloBoladao())
          .focused($selectedField, equals: .name)
          .submitLabel(.next)
          .onSubmit {
            selectedField = .password
          }
        
        
        //Password --
        SecureField("Senha", text: $user.password)
          .keyboardType(.alphabet)
          .modifier(EstiloBoladao())
          .focused($selectedField, equals: .password)
          .submitLabel(.next)
          .onSubmit {
            selectedField = .code
          }
        
        
        //Cpf --
        TextField("CPF", value: $user.code, format: .number)
          .keyboardType(.alphabet)
          .modifier(EstiloBoladao())
          .focused($selectedField, equals: .code)
          .submitLabel(.done)
          .onSubmit {
            selectedField = nil
          }
        
        //Button
        Button("Esconder"){
         selectedField = nil
        }
        
      }
      .padding()
    }
    .onTapGesture {
      selectedField = nil
    }
  }
}

//MARK: Custom Modifiers
struct EstiloBoladao: ViewModifier {
  var padding: CGFloat?
//  var background: ShapeStyle?
  
  
  
  func body(content: Content) -> some View {
    content
      .padding()
      .background(.tertiary)
      .cornerRadius(10)
  }
}

//MARK - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        ContentView()
          .previewDevice("iPhone 13")
          .previewDisplayName("Light")
          .preferredColorScheme(.light)
        ContentView()
          .previewDisplayName("Dark")
          .preferredColorScheme(.dark)
      }
    }
}
