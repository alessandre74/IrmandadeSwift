//
//  Utils.swift
//  Garagem
//
//  Created by Alessandre Livramento on 23/08/22.
//

import Foundation
import SwiftUI


struct Utils{
    
    //Cores --
    struct SavedColor{
        static let vermelhoBrabo = Color("VermelhoBrabo")
        static let azulParacatu = Color("AzulParacatu")
    }
    
    //Urls --
    struct SavedUrl{
        static let siteIrmandade = "http://www.irmandadeswift.com"
        static let comunidadeIrmandade = "http://www.irmandadeswift.com/tmj"
        static let youtubeIrmandade = "http://youtube/irmandade"
    }
    
    //Urls --
    struct ValorFake{
        static let carro1Fake = Car(marca: "Ford", modelo: "Apollo", potencia: 82)
        static let carro2Fake = Car(marca: "Fiat", modelo: "Palio", potencia: 52)
        static let carro3Fake = Car(marca: "Citroen", modelo: "C4", potencia: 116)
        static let pessoaFake = Person(nome: "Michel Lopes", idade: 22, carros: [carro1Fake, carro2Fake, carro3Fake])
    }
    
    
}
