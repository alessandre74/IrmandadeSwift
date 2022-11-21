//
//  ContentView.swift
//  NavigationAuthorView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    
    //Gerenciando navegação entre telas
    NavigationView {
      
      //Lista de authors
      List{
        
        //Criação dinâmica de views
        ForEach(authors){ item in
          
          
          //Criando um link com a segunda tela.
          NavigationLink(destination: AuthorView(author: item)){
            
            
            //Não utilizar botões dentro de NavigationLink utilize um text
            
            //View de authors
            AuthorRowView(author: item)
            
          }
        }
      }
      
      //Definindo título da tela
      .navigationTitle("Authors")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
