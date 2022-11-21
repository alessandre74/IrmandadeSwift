//
//  ContentView.swift
//  BasicEventsView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  @State private var numeroMisterioso:Int = 0
  
  var body: some View {
    
    VStack {
      List{
        Text("Hello, world!")
          .onAppear {
            print("Apareceu na tela!")
          }
          .onDisappear {
            print("Desaparaceu da tela!")
          }
      
        Section {
          HStack(alignment: .center){
            Text("\(numeroMisterioso)")
              .font(.title.bold())
          }
          .frame(maxWidth: .infinity)
          
          HStack {
            Button("Adicionar 1 ao número misterioso!"){
              numeroMisterioso += 1
            }
            .font(.callout.bold())
            .foregroundColor(.white)
            .padding(.vertical, 10)
            .padding(.horizontal, 22)
            .background(.blue)
            .cornerRadius(6)
          }
          .onChange(of: numeroMisterioso) { valor in
            print("O valor do número misterioso é \(valor)")
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
