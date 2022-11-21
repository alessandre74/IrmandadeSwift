//
//  ContentView.swift
//  FontShapeBackgroundOverlayView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      
      VStack {
        Text("Caption2")
          .font(.caption2)
          .fontWeight(.medium)
          .foregroundColor(Color.white)
        
        Text("Caption")
          .font(.caption)
          .fontWeight(.medium)
          .foregroundColor(Color.white)
        
        Text("Footnote")
          .font(.footnote)
          .fontWeight(.medium)
          .foregroundColor(Color.white)
        
        Text("Subheadline")
          .font(.subheadline)
          .fontWeight(.medium)
          .foregroundColor(Color.white)
        
        Text("Callout")
          .font(.callout)
          .fontWeight(.medium)
          .foregroundColor(Color.white)
        
        Text("Headline")
          .font(.headline)
          .fontWeight(.medium)
          .foregroundColor(Color.white)
        
      }
      
      VStack {
        
        
        Text("Body")
          .font(.body)
          .fontWeight(.medium)
          .foregroundColor(Color.white)
        
        Text("Title2")
        
          .font(.title2)
          .fontWeight(.medium)
          .foregroundColor(Color.white)
        
        Text("Title3")
          .font(.title3)
          .fontWeight(.medium)
          .foregroundColor(Color.white)
        
        Text("Title")
          .font(.title)
          .fontWeight(.medium)
          .foregroundColor(Color.white)
        
        Text("LargeTitle")
          .font(.largeTitle)
          .fontWeight(.medium)
          .foregroundColor(Color.white)
      }
      
      Spacer()
        .frame(height: 10)
      
      Text("Font Customizada JetBrains")
        .font(Font.custom("JetBrainsMono-Medium", size: 16))
        .foregroundColor(.white)
      
      
      HStack{
        Rectangle()
          .fill(Color.purple)
          .frame(width: 100, height: 100)
        
        Circle()
          .strokeBorder(.red, lineWidth: 5)
          .frame(width: 100, height: 100)
          .overlay(Circle()
            .fill(Color.white)
            .padding(2)
            .frame(width: 90, height: 90)
                   
          )
        
        Ellipse()
          .fill(Color.blue)
          .frame(width: 100, height: 50)
        
      }
      
      HStack {
        Capsule(style: .continuous)
          .fill(Color.orange)
          .frame(width: 100, height: 40)
        
        RoundedRectangle(cornerRadius: 30, style: .continuous)
          .fill(Color.green)
          .frame(width: 100, height: 100)
      }
      
      
      ZStack{
        Rectangle()
          .fill(Color.red)
          .frame(width: 100, height: 100)
        
        Text("Hello Irmandade")
          .font(.title.weight(.bold))
          .foregroundColor(Color.white)
        
      }
      .frame(width: 300, height: 160)
      .background(Color.blue)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color("CustomColor"))
    .cornerRadius(8)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
