//
//  ContentView.swift
//  PickerView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  
  //IDS
  
  enum SaboresID: String, CaseIterable, Identifiable {
    var id: Self {self}
    case baunilha, chocolate, creme, napolitano
  }
  
  @State private var saboresID = SaboresID.baunilha
  
  
  // Enums
  @State private var sabores = Sabores.baunilha
  enum Sabores {
    case baunilha, chocolate, creme, napolitano
  }
  
  // Strings
  @State private var sabor = "Chocolate"
  
  var body: some View {
    
    VStack {
      // tags com strings
      Picker("Sabores", selection: $sabor) {
        Text("Baunilha").tag("Baunilha")
        Text("Chocolate").tag("Chocolate")
        Text("Creme").tag("Creme")
        Text("Napolitano").tag("Napolitano")
      }
      
      // tags com enums
      Picker("Sabores", selection: $sabores) {
        Text("Baunilha").tag(Sabores.baunilha)
        Text("Chocolate").tag(Sabores.chocolate)
        Text("Creme").tag(Sabores.creme)
        Text("Napolitano").tag(Sabores.napolitano)
      }
      
      //tags com ids
      Form {
        Picker("Sabores", selection: $saboresID) {
          ForEach(SaboresID.allCases){ sabor in
            Text(sabor.rawValue)
          }
        }
        //estilos de picker
        //.pickerStyle(.segmented)
        //.pickerStyle(.inline)
        //.pickerStyle(.menu)
        .pickerStyle(.wheel)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
