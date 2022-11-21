//
//  ContentView.swift
//  TabView_View
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
      TabView{
        Text("Primeira Tela")
          .tabItem {
            Image(systemName: "die.face.1")
            Text("Primeira")
          }
        
        
        Text("Segunda Tela")
          .tabItem {
            Image(systemName: "die.face.2")
              Text("Segunda")
          }
        
        Text("Terceira Tela")
          .tabItem {
            Image(systemName: "die.face.3")
              Text("Terceira")
          }
      }
      .font(.headline)
      .accentColor(.purple)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}
