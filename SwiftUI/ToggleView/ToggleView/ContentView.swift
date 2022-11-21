//
//  ContentView.swift
//  ToggleView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  @State var isHidden1 = false
  @State var isHidden2 = false
  
    var body: some View {
      
      Form{
        Toggle(isOn: $isHidden1) {
          Label("Ativar", systemImage: "heart.fill")
        }
        
        Toggle("Ativar", isOn: $isHidden2)
        
        Button("Botãooooo"){
          print("O Botão foi cliclado")
        }
          .disabled(!isHidden2)
      }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}
