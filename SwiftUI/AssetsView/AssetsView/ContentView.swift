//
//  ContentView.swift
//  AssetsView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

      VStack {
        Text("Mike Livramento")
          .font(.title.bold())
          .foregroundColor(Color("Color_Dark-Blue"))
          .shadow(color: .gray, radius: 10, x: 1, y: 1)
        
        Image("mike")
          .resizable()
          .frame(width: 80, height: 80)
          .clipShape(Circle())
          .padding(4)
          .background(Circle().stroke(LinearGradient(colors: [.blue, .green], startPoint: .topLeading, endPoint: .bottomLeading), lineWidth: 3))
          .shadow(color: .gray, radius:10, x: 1, y: 1)

        
        
      }
      .frame(width: 300, height: 300)
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}
