//
//  ContentView.swift
//  AppIconView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Image("mike")
      .resizable()
      .scaledToFill()
      .clipShape(Circle())
      .frame(width: 200, height: 200, alignment: .center)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
