//
//  Car.swift
//  Garagem
//
//  Created by Alessandre Livramento on 23/08/22.
//

import Foundation

struct Car: Identifiable{
    var id = UUID()
    var marca: String
    var modelo: String
    var potencia: Int
}
