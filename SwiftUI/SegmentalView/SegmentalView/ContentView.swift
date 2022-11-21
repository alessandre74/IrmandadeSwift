//
//  ContentView.swift
//  SegmentalView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  
  let availableColor: [Color] = [.red, .green, .blue, .cyan]
  
  @State var selectedColor: Color = .red
  
  var body: some View {
    VStack{
      Picker("Choose a color", selection: $selectedColor ){
        //          Text("Red").tag(Color.red)
        //          Text("Green").tag(Color.green)
        //          Text("Blue").tag(Color.blue)
        ForEach(availableColor, id: \.self){ color in
          Text(color.description.capitalized)
        }
      }
      .pickerStyle(.segmented)
      Spacer()
      selectedColor
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
