//
//  ContentView.swift
//  Garagem
//
//  Created by Alessandre Livramento on 23/08/22.
//

import SwiftUI

struct ContentView: View {
    var pessoa = Utils.ValorFake.pessoaFake
    
    var body: some View {
        VStack{
            NavigationView {
                
                List{
                    
                    ///Loop --
                    ForEach(pessoa.carros){ item in
                        
                        ///Item --
                        NavigationLink { DetailView(selectedCar: item) } label: {
                            CarView(item: item)
                        }

                    }
                }
                .navigationTitle("Gargagem")
            }
        }
    }
}

//MARK: - Item
private struct CarView: View{
    var item: Car
    
    var body: some View{
        HStack{
            Image(systemName: "car")
            Text(item.modelo)
            Spacer()
            
            Text("\(item.potencia) cv")
                .font(.callout)
                .foregroundColor(.secondary)
        }
    }
}


//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            ContentView()
        }
    }
}
