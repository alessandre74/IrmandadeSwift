//
//  AuthorView.swift
//  NavigationAuthorView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct AuthorView: View {
  
  //Forçando a tela anterior a enviar dados do tipo Author
  var author: Author
  
  @State var isMarked = false
  
    var body: some View {
      Form {
        
        //Sessão de conteúdo
        Section{
          Text(author.content)
            .font(.title)
            .italic()
            .padding()
          
        }
        
        Section{
          HStack{
            Label("Favorito", systemImage: "star")
            Spacer()
            Toggle("", isOn: $isMarked)
          }
        }
      }
      
      //Definindo título da tela
      .navigationTitle(author.author)
    }
}

struct AuthorView_Previews: PreviewProvider {
    static var previews: some View {
      AuthorView(author: authors.first!)
    }
}
