//
//  PhraseRowView.swift
//  ComposingView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct PhraseRowView: View {
  
  var phrase: Phrase
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(phrase.content)
        .foregroundColor(.red)
        .font(.body)
        .italic()
      Text(phrase.author)
        .font(.headline)
        .bold()
        .padding(.top,5)
    }.padding(5)
  }
}

struct PhraseRowView_Previews: PreviewProvider {
  static var previews: some View {
    PhraseRowView(phrase: reflexoes.first!)
  }
}
