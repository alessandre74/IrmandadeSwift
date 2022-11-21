//
//  ContentView.swift
//  LiveCodingSizesAndCoordinates
//
//  Created by Alessandre Livramento on 01/09/22.
//

import SwiftUI

struct ContentView: View {
  
  ///Avô
  var body: some View {
    
    // UIScreen pega a tela já o GeometryReader pega o frame no caso a Vstack que no caso é a tela inteira pois definimos com maxWith e maxHeight infinity.
    GeometryReader { proxy in
      
      HStack {
        MinhaSegundaView(proxy: proxy)
      }
      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      
    }
    .background(.red)
  }
}

private struct MinhaSegundaView: View {
  var proxy: GeometryProxy
  
  var body: some View {
    Text("IrmandadeSwift")
      .font(.largeTitle)
      .frame(width: proxy.size.width * 0.85)
      .background(.yellow)
    //  Text("pp")
    //    .position(x: proxy.frame(in: .local).midX, y: proxy.frame(in: .local).midY)
  }
  
}

struct Code1View : View{
  var body: some View{
    ///Pai
    HStack {
      
      ///Filho
      Text("IrmandadeSwift")
        .frame(minWidth: 100,maxWidth: .infinity)
        .layoutPriority(1)
        .background(.red)
      
      
      
      
      ///Filho
      Text("IrmandadeSwift")
        .lineLimit(1) //limita o numero de linhas
        .frame(minWidth: 100, maxWidth: .infinity)
        .background(.yellow)
        .layoutPriority(1) // define quem tem a prioridade, quanto maior o numero maiot a prioridade.
      
    }
    .padding(10)
    .background(.blue)
    
  }
}

struct Code2View: View {
  
  ///Avô
  var body: some View {
    
    ///Pai
    HStack() {
      
      ///Filho
      Text("IrmandadeSwift")
        .font(.largeTitle)
        .background(.yellow)
    }
    .padding(20)
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottomTrailing)
    
  }
}

struct Code3View: View {
  
  ///Avô
  var body: some View {
    
    ///Pai
    HStack() {
      
      ///Filho
      Text("IrmandadeSwift")
        .font(.largeTitle)
        .background(.yellow)
        .offset(x:0, y: 100) // offset faz o deslocamento x horizontal e y vertical
    }
    .padding(10)
    .background(.blue)
    
  }
}

struct Code4View: View {
  
  ///Avô
  var body: some View {
    
    ///Pai
    VStack {
      
      
      HStack{
        ///Filho
        Text("IrmandadeSwift")
          .font(.largeTitle)
          .background(.yellow)
        
        // Posição 0 é do lado esquerdo superior. Ao contrário do offset o position realmente muda de posição e leva tudo junto que estiver com ele, se tiver um Hstack mudar junto mesmo que o position esteja em um text dentro do HStack.
          .position(x: 200, y: 40)
        
        
      }
      .background(.blue)
      
      
      HStack {
        ///Filho
        Text("IrmandadeSwift")
          .font(.largeTitle)
          .background(.yellow)
          .position(x: 100, y: 40) // Posição é o todo esquerdo
        
      }
      .background(.red)
    }
    //    .padding(10)
    //    .background(.blue)
    
  }
}

struct Code5View: View {
  
  let minhaTela = UIScreen.main.bounds // Tamanho da tela
  
  ///Avô
  var body: some View {
    
    ///Pai
    VStack {
      
      ///Filho
      Text("IrmandadeSwift")
        .font(.largeTitle)
        .frame(width: minhaTela.width * 0.85)
        .background(.yellow)
        .position(x: minhaTela.midX , y: minhaTela.midY) // aqui podemos posicionar o elemento com base nos dados da tela, aqui coloca o text no meio da tela
      
    }
    //    .padding(10)
    //    .background(.blue)
    
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewInterfaceOrientation(.portrait)
  }
}
