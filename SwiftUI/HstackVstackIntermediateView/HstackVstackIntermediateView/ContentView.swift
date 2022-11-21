//
//  ContentView.swift
//  HstackVstackIntermediateView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    HStack(alignment: .center, spacing: 12) {
      Text("alguma coisa")
      Text("maior que alguma coisa")
        .layoutPriority(1)
      Text("beeeem maior que alguma coisa mais coisa aqui dentro")
    }
    .border(.blue)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
