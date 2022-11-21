//
//  ContentView.swift
//  SwiftUITipsView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  @State var isOn = false
  
  var body: some View {
    VStack(alignment: .center, spacing: 20){

      Image(systemName: isOn ? "sun.max" : "moon.zzz")
        .font(.system(size: 150))
        .foregroundColor(isOn ? .orange : .gray)
        .frame(width: 200, height: 200)
       
      Button(isOn ? "Sol" : "Lua"){
        isOn.toggle()
      }
      .foregroundColor(.white)
      .frame(width: 200, height: 40)
      .background(.blue)
      .cornerRadius(6)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
