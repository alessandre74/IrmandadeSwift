//
//  LifeCycleViewApp.swift
//  LifeCycleView
//
//  Created by Alessandre Livramento on 16/08/22.
//

import SwiftUI

@main
struct LifeCycleViewApp: App {
  
  //Acessando informações do ambiente.
  @Environment(\.scenePhase) private var scenePhase
  
  var body: some Scene {
    
    //Definindo a primeira tela do app.
    WindowGroup {
      ContentView()
    }
    
    //Monitorando a;terações na fase do ambiente.
    .onChange(of: scenePhase) { phase in
      
      //Definindo ações de acordo com a situação atual.
      switch phase {
      case .active:
        print("Meu App está: [Ativo]")
      case .inactive:
        print("Meu App está: [Inativo]")
      case .background:
        print("Meu App está: [Em Background]")
        
      @unknown default:
        print("Onde está meu App? 😅")
      }
    }
  }
}
