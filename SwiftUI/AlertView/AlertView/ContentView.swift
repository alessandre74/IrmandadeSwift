//
//  ContentView.swift
//  AlertView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  @State var showAlert = false
  
  var body: some View {
    
    Button("Mostrar alerta"){
      showAlert.toggle()
    }
    .alert("Meu alerta", isPresented: $showAlert){
      Button("Tentar novamente"){}
      Button("Cancel", role: .cancel){}
      Button("Excluir", role: .destructive){}
    } message: {
      Text("Minha mensagem personalizada")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
