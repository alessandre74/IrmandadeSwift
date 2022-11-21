//
//  ContentView.swift
//  CustomModifiersView
//
//  Created by Alessandre Livramento on 16/08/22.
//

import SwiftUI

struct TituloLargo: ViewModifier{
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(Color.purple)
      .multilineTextAlignment(.center)
      .shadow(radius: 10)
  }
}

struct ContentView: View {
  var body: some View {
    Text("Modifiers, customizados!")
      .tituloPrincipal()
    
  }
}

extension View {
  func tituloPrincipal() -> some View {
    modifier(TituloLargo())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
