//
//  ContentView.swift
//  ButtonView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  @State var btn = true
  
    var body: some View {
      
      VStack(alignment: .center, spacing: 40){
        Button("Clique aqui", role: .destructive){
          print("O botão foi clicado")
        }
        .buttonStyle(.borderedProminent)
        
    
        Button {
          print("Clicou em um botão")
        } label: {
          Label("Coração", systemImage: "heart.fill")
           
        }
        .buttonStyle(.bordered)
      }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}
