//
//  ContentView.swift
//  CustomImageView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Image("mike")
        .resizable()
        .scaledToFill()
        .clipShape(Circle())
        .frame(width: 300, height: 300, alignment: .center)
        .shadow(color: .gray, radius: 8, x: 1, y: 1)
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
