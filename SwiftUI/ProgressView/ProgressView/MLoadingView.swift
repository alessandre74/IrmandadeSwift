//
//  MLoadingView.swift
//  ProgressView
//
//  Created by Alessandre Livramento on 17/08/22.
//

import SwiftUI

struct MLoadingView: View {
  
  var isShowing: Bool
  
    var body: some View {
      ZStack {
        Color.black.ignoresSafeArea()
        
        ProgressView("Carregando...")
          .tint(.white) //Altera a cor da Progressview
          .foregroundColor(.white) //Altera a cor do texto da ProgressView
        
      }.opacity(isShowing ? 1 : 0)
    }
}

struct MLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        MLoadingView(isShowing: true)
    }
}
