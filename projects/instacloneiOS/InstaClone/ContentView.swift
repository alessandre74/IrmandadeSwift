//
//  ContentView.swift
//  IntaClone
//
//  Created by Alessandre Livramento on 12/04/22.
//
import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      TopView()
      
      PostView()
      
      Divider()
      
      TabBarView()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
