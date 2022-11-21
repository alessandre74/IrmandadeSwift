//
//  AuthorView.swift
//  NavigationAuthorView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import Foundation

struct Author: Identifiable {
  var id = UUID()
  var author = String()
  var content = String()
}

var authors = [
  Author( author: "Michel Lopes", content: "A vida é bela, não acha?"),
  Author( author: "Bruno Lima", content: "Tudo sei que nada sei."),
  Author( author: "Mari Silva", content: "Salva nois! Please")
]
