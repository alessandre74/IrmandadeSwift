//
//  DetailView.swift
//  NavigationStackBasics
//
//  Created by Alessandre Livramento on 08/04/23.
//

import SwiftUI

struct DetailView: View {
  var title: String

  var body: some View {
    Label("Detail", systemImage: "newspaper")
      .font(.largeTitle)
      .navigationTitle(title)
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationStack {
      DetailView(title: "Meu Título")
    }
  }
}
