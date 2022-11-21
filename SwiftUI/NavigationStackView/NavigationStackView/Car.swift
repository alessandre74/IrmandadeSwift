//
//  Car.swift
//  NavigationStackView
//
//  Created by Alessandre Livramento on 03/11/22.
//

import SwiftUI

struct Car: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var color: Color
}

let garagem = [
    Car(name: "Palio", color: .red),
    Car(name: "Onix", color: .gray),
    Car(name: "Omega", color: .blue),
    Car(name: "Uno", color: .mint)
]
