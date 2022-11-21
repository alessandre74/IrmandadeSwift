//
//  ContentView.swift
//  SheetView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  @State var showSheet = false
  
  var body: some View {
    Button("Mostrar modal"){
      showSheet.toggle()
    }
    // Modal que estende a tela inteira
    .fullScreenCover(isPresented: $showSheet) {
      //Modal
      //.sheet(isPresented: $showSheet) {
      
      VStack {
        Text("Minha modal")
        
        Button("Fechar modal"){
          showSheet.toggle()
        }
      }
      .foregroundColor(.white)
      .frame(maxWidth: .infinity,maxHeight: .infinity)
      .background(.blue)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
