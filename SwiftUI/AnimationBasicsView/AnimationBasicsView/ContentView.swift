//
//  ContentView.swift
//  AnimationBasicsView
//
//  Created by Alessandre Livramento on 16/08/22.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    
    VStack{
      Animacao1()
      Animacao2(isShowing: true)
    }
    
  }
}

struct Animacao1: View {
  
  @State var animatedValue = 1.0
  
  var body: some View{
    VStack {
      Spacer()
      
      Image(systemName: "flame")
        .font(.system(size: 50))
        .scaleEffect(animatedValue)
      
      //MARK: Animação implicita
                .animation(.default, value: animatedValue) // O deafault é easeInOut
      //          .animation(.easeIn, value: scalevalue)
      //          .animation(.easeOut, value: scalevalue)
      //          .animation(.easeIn(duration: 2), value: scalevalue)
      //          .animation(.easeOut(duration: 2), value: scalevalue)
      //          .animation(.easeInOut(duration: 2), value: scalevalue)
      //          .animation(.easeIn.delay(2), value: scalevalue)
      //          .animation(.easeOut.delay(2), value: scalevalue)
      //          .animation(.easeIn.repeatForever(), value:scalevalue)
      //          .animation(.easeOut.repeatForever(), value: scalevalue)
      //          .animation(.easeIn.repeatCount(4), value: scalevalue)
      //          .animation(.easeInOut.repeatForever(autoreverses: false), value: animatedValue)
        .opacity(0.30 * animatedValue)
//        .animation(
//          .easeInOut(duration: 1.2)
//          .delay(1)
//          .repeatForever(autoreverses: true),
//                   value: animatedValue)
  
      Spacer()
      
    }
    .onAppear(){
      animatedValue += 1
      
      //MARK: Animação explicita
      //          withAnimation(.easeInOut) {
      //            animatedValue += 1
      //          }
    }
  }
}

struct Animacao2: View {
  var isShowing: Bool
  @State var isAnimated = false
  
  var body: some View{
    
    ZStack {
      Color.black.ignoresSafeArea()
      
      
      VStack {
        Image(systemName: "star.circle")
          .symbolRenderingMode(.palette)
          .foregroundStyle(.white,.tertiary)
          .font(.system(size: 90))
          .rotationEffect(.degrees(isAnimated ? 360 : 0))
          .animation(
            .easeInOut(duration: 1.2)
            .repeatForever(autoreverses: false),
          value: isAnimated)
        
        Text("Que a força esteja com você!")
          .foregroundColor(.gray)
          .font(.caption)
          .italic()
          .padding(1)
        
      }
    }
    .onAppear(perform: {
      isAnimated = true
    })
    .opacity(isShowing ? 1 : 0)
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
