//
//  ContentView.swift
//  LiveCodingColorsView
//
//  Created by Alessandre Livramento on 17/08/22.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    VStack {
      Color6View()
    }
  }
}

struct Color1View: View {
  
  let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
  
  var body: some View{
    VStack {
      //skyBlue.ignoresSafeArea()
      
      //valor de 0 até 1 e paleta de cores com valores tipo 118 dividir por 255 exemplo 118/255
      Color(red: 67/255, green: 210/255, blue: 243/255, opacity: 0.5).ignoresSafeArea()
      
    }
    //.frame(width: 200, height: 200)
  }
}

struct Color2View: View {
  
  @Environment(\.colorScheme) var colorScheme
  
  var body: some View{
    VStack {
      
      Button("Let's Gou!"){
        
      }
      .font(.largeTitle)
      .padding()
      .background(colorScheme == .dark ? .white : .black )
      .cornerRadius(15)
      
    }
  }
}

struct Color3View: View {
  var body: some View{
    VStack {
      
      Button("Let's Gou!"){
        
      }
      .font(.largeTitle)
      .padding()
      .background(.primary )
      .cornerRadius(15)
      
    }
    .padding(30)
    .background(.quaternary)
  }
}

struct Color4View: View {
  var body: some View{
    VStack {
      
      Button("Let's Gou!"){
        
      }
      .font(.largeTitle)
      .padding()
      .background(.ultraThickMaterial )
      .cornerRadius(15)
      
    }
    .padding(30)
    .background(.primary) //.gray.opacity(0.5)) em ver de utilizar opacidade para obter efeito blur/translucido só utilizar o material
  }
}

struct Color5View: View {
  var body: some View{
    VStack{
      
      HStack{
        
      }
      .frame(maxWidth: .infinity, maxHeight: 200)
      .background(Material.ultraThickMaterial)

    }
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    .background(.white)
  }
}

struct Color6View: View {
  var body: some View{
    VStack {
      
      Button("Let's Gou!"){
        
      }
      
      //Definindo a cor do AccentColor, será setado o foregroundColor de todos os componentes será do AccentColor.
      .font(.largeTitle)
      .padding()
      .background(Color("Azul"))
      .cornerRadius(15)
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView()
        .previewDevice("iPhone 13")
        .previewDisplayName("Light")
        .previewInterfaceOrientation(.portrait)
        .previewLayout(.device)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/)
        .environment(\.sizeCategory, .large)
      ContentView()
        .previewDevice("iPhone 13")
        .previewDisplayName("Dark")
        .previewInterfaceOrientation(.portrait)
        .previewLayout(.device)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .environment(\.sizeCategory, .large)
    }
  }
}
