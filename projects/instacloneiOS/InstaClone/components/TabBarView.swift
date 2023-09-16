//
//  TabBarView.swift
//  InstaClone
//
//  Created by Alessandre Livramento on 30/06/22.
//

import SwiftUI

struct TabBarView: View {
  var body: some View {
    
    
    HStack {
      
      Image(iconsItens.home)
        .resizable()
        .scaledToFit()
        .frame(width: 22, height: 22)
      
      Spacer()
      
      Image(iconsItens.search)
        .resizable()
        .scaledToFit()
        .frame(width: 22, height: 22)
      
      Spacer()
      
      Image(iconsItens.reels)
        .resizable()
        .scaledToFit()
        .frame(width: 22, height: 22)
      
      Spacer()
      
      Image(iconsItens.shop)
        .resizable()
        .scaledToFit()
        .frame(width: 22, height: 22)
      
      Spacer()
      
      Image(systemName: iconsItens.profile)
        .resizable()
        .frame(width: 20, height: 20, alignment: .center)
        .clipShape(Circle())
        .padding(.top, 3)
        .background(Circle().stroke(Color.black, lineWidth: 1.4))
    }
    .padding(.horizontal,25)
  }
}

struct TabBarView_Previews: PreviewProvider {
  static var previews: some View {
    TabBarView()
  }
}
