//
//  ContentView.swift
//  GroupConditionalView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    let estaIniciando = false
    
    // Uma view possibilita até 10 elementos e um Group ajuda a resolver esse problema
    VStack {
      Group {
        Text("1")
        Text("2")
        Text("3")
        Text("4")
        Text("5")
        Text("6")
        Text("7")
        Text("8")
        Text("9")
        Text("10")
      }
      .font(.headline)
      
      Group {
        Text("11")
      }
      
      Spacer().frame(height: 20)
      
      //Podeos utilizar condições em para exibir uma view
      
      Group {
        if estaIniciando {
          Text("Bem vindo(a) a aula de Group")
        }else{
          Text("Espero que tenha gostado da aula de Group")
        }
      }
      .font(.headline)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
