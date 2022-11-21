//
// Created by Michel Lopes.
// Copyright (c) 2021 Michel Lopes. All rights reserved.
//
    

import SwiftUI

class ContentViewModel: ObservableObject{
    
    //Carro atual
    @Published var newCar = Car()
    
    //Array de carros na garagem
    @Published var garagem: [Car] = []
    
    

    func createCar(){
        //Cria a Plist e Insere o novo item.
        StorageHandler.write(item: newCar)
        
        //Limpando os dados.
        newCar = Car()
        
        //Atualiza os dados do array.
        updateGarage()
    }
    
    
    func updateGarage(){
        //Carregar itens existentes na PList.
        garagem = StorageHandler.load()
    }
    
    
    func resetGarage(){
        //Deleta o arquivo da Plist.
        StorageHandler.deleteAll()
        
        //Limpa o array.
        garagem = StorageHandler.load()
    }

}
