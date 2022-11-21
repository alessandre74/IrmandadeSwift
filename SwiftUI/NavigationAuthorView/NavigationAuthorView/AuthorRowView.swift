//
//  AuthorRowView.swift
//  NavigationAuthorView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct AuthorRowView: View {
  
  var author: Author
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(author.content)
        .foregroundColor(.red)
        .font(.body)
        .italic()
      Text(author.author)
        .font(.headline)
        .bold()
        .padding(.top,5)
    }.padding(5)
  }
}

struct AuthorRowView_Previews: PreviewProvider {
  static var previews: some View {
    AuthorRowView(author: authors.first!)
  }
}
