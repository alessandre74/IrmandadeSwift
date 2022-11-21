//
//  ContentView.swift
//  ForEachView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI


struct ContentView: View {
  var amigos: [String] = ["Biel", "Nina", "Tuta", "Zé"]
  
    var body: some View {
      VStack {
        ForEach(0..<4) { indexCirculo in
          HStack {
            Circle()
              .fill(.blue)
              .frame(width: 60, height: 60)
            
            Text("index: \(indexCirculo)")
            
          }
        }
        
        VStack {
          ForEach(amigos.indices, id:\.self){ indexAmigo in
            Text("\(amigos[indexAmigo])")
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

