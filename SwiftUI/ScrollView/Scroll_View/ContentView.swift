//
//  ContentView.swift
//  Scroll_View
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ScrollView(.vertical, showsIndicators: false){
      VStack(alignment: .leading, spacing: 50) {
        
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(alignment: .center, spacing: 20) {
            Text("cavalo")
              .padding()
              .foregroundColor(.blue)
            Text("cavalo")
              .padding()
              .foregroundColor(.red)
            Text("cavalo")
              .padding()
              .foregroundColor(.green)
            Text("cavalo")
              .padding()
              .foregroundColor(.blue)
            Text("cavalo")
              .padding()
              .foregroundColor(.yellow)
          }
        }
        
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(alignment: .center, spacing: 20) {
            Text("cavalo")
              .padding()
              .foregroundColor(.blue)
            Text("cavalo")
              .padding()
              .foregroundColor(.red)
            Text("cavalo")
              .padding()
              .foregroundColor(.green)
            Text("cavalo")
              .padding()
              .foregroundColor(.blue)
            Text("cavalo")
              .padding()
              .foregroundColor(.yellow)
          }
        }
        
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(alignment: .center, spacing: 20) {
            Text("cavalo")
              .padding()
              .foregroundColor(.blue)
            Text("cavalo")
              .padding()
              .foregroundColor(.red)
            Text("cavalo")
              .padding()
              .foregroundColor(.green)
            Text("cavalo")
              .padding()
              .foregroundColor(.blue)
            Text("cavalo")
              .padding()
              .foregroundColor(.yellow)
          }
        }
      }
    }
  }
}

struct ContentView_View: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
