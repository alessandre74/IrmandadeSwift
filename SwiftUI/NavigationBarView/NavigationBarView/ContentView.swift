//
//  ContentView.swift
//  NavigationBarView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      NavigationView {
        Text("Hello, world!")
          .navigationTitle("Título")
          .navigationBarTitleDisplayMode(.automatic)
          .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
              Button {
                print("Enviar")
              } label: {
                Label("Enviar", systemImage: "paperplane.fill")
              }
            }
            
            ToolbarItemGroup(placement: .navigationBarTrailing) {
              Button {
                print("Atualizar")
              } label: {
                Label("Atualizar", systemImage: "arrow.clockwise")
              }
              Button {
                print("Editar")
              } label: {
                Label("Editar", systemImage: "slider.horizontal.3")
              }
            }
          }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}
