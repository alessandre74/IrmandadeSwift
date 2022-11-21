//
//  ContentView.swift
//  ProgressView
//
//  Created by Alessandre Livramento on 17/08/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    
    VStack {
      
      VStack {
        
        ProgressView1()
        
        Spacer().frame(height: 50)
        
        ProgressView2()
      
        ProgressView3()
        
        ProgressView4()
        
      }
  
    }
  }
}

struct ProgressView1: View {
  var body: some View{
    ProgressView("Carregando...")
    //    .scaleEffect(2)
      .scaleEffect()
      .progressViewStyle(.linear)
  }
}

struct ProgressView2: View {
  
  @State var valorAtual = 5.0
  
  var body: some View{
    ProgressView("Carregando", value: valorAtual, total: 10)
    
    Button("Adicionar+" ){
      valorAtual += 1
    }
    .buttonStyle(.bordered)
    .foregroundColor(.white)
    .background(.blue)
    .cornerRadius(6.0)
    .shadow(color: .gray, radius: 6.0, x: 4.0, y: 6.0)
  }
}

struct ProgressView3: View {
  var body: some View {
    List{
      Label("Golf", systemImage: "car")
      Label("Golf", systemImage: "car")
      Label("Golf", systemImage: "car")
      Label("Golf", systemImage: "car")
      Label("Golf", systemImage: "car")
      Label("Golf", systemImage: "car")
    }
    .refreshable {
      print("[CARREGANDO....]")
    }
  }
}

struct ProgressView4: View {
  var body: some View {
    List{
      Label("Golf", systemImage: "car")
      Label("Golf", systemImage: "car")
      Label("Golf", systemImage: "car")
      Label("Golf", systemImage: "car")
      Label("Golf", systemImage: "car")
      Label("Golf", systemImage: "car")
    }
    .overlay {
      MLoadingView(isShowing: true)
    }
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
