//
// Created by Michel Lopes.
// Copyright (c) 2021 Michel Lopes. All rights reserved.
//

import Foundation

struct Car: Codable, Identifiable {
    var id = UUID()
    var model: String = ""
    var brand: String = ""
}
