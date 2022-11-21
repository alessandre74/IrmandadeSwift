//
//  ContentView.swift
//  UserDefaultsPersistenceView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  
  
  @State var text: String = UserDefaults.standard.string(forKey: "ContentView.text") ?? ""
  
  // exemplo com 1 slider
  @State var number: Float = UserDefaults.standard.float(forKey: "ContentView.number")
  
  // exmplo com vários sliders
  @State var numbers: [Float] = UserDefaults.standard.object(forKey: "ContentView.numbers") as? [Float] ?? [0,0,0]
  
  var body: some View {
    Form {
      TextField("Nosso text field", text: $text)
        .onChange(of: text) { newValue in
          UserDefaults.standard.set(newValue, forKey: "ContentView.text")
        }
      Slider(value: $number, in: 0...100)
        .onChange(of: number) { newValue in
          UserDefaults.standard.set(newValue, forKey: "ContentView.number")
        }
      
      
      Section {
        Group {
          Slider(value: $numbers[0], in: 0...100)
          Slider(value: $numbers[1], in: 0...100)
          Slider(value: $numbers[2], in: 0...100)
        }
        .onChange(of: numbers) { newValue in
          UserDefaults.standard.set(newValue, forKey: "ContentView.numbers")
        }
      }
    }
    .onChange(of: numbers, perform: { newValue in
      print(numbers)
    })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
