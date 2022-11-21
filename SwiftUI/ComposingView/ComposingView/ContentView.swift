//
//  ContentView.swift
//  ComposingView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    //Lista de reflexões
    List{
      
      //Criação dinâmica de views
      ForEach(reflexoes){ item in
        
        //View de reflexão
        PhraseRowView(phrase: item)
      }
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

