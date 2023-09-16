//
//  TopView.swift
//  InstaClone
//
//  Created by Alessandre Livramento on 30/06/22.
//

import SwiftUI

struct TopView: View {
  var body: some View {
    HStack {
      HStack {
        Image(iconsItens.logo)
        
        Image(systemName: "chevron.down")
          .resizable()
          .frame(width: 8, height: 4)
      }
      
      Spacer()
      
      HStack(spacing: 18) {
        Image(iconsItens.add)
          .resizable()
          .scaledToFit()
          .frame(width: 24, height: 24)
        Image(iconsItens.heart)
          .resizable()
          .scaledToFit()
          .frame(width: 24, height: 24)
        Image(iconsItens.messenger)
          .resizable()
          .scaledToFit()
          .frame(width: 24, height: 24)
      }
    }
    .padding(.horizontal)
    
  }
}

struct TopView_Previews: PreviewProvider {
  static var previews: some View {
    TopView()
  }
}
