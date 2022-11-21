//
//  DetailView.swift
//  Garagem
//
//  Created by Alessandre Livramento on 23/08/22.
//

import SwiftUI

struct DetailView: View {
    var selectedCar: Car
    
    var body: some View {
        
        VStack{
            Text(selectedCar.modelo).font(.largeTitle)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Material.regular)
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectedCar: Utils.ValorFake.carro2Fake)
    }
}
