//
//  Images.swift
//  IntaClone
//
//  Created by Alessandre Livramento on 12/04/22.
//

import Foundation
import SwiftUI

let iconsItens = (
    add: "add",
    bookmark: "bookmark",
    carouseldots: "carouseldots",
    comment: "comment",
    profile: "person",
    heart: "heart",
    home: "home",
    logo: "logo",
    messenger: "messenger",
    more: "more",
    reels: "reels",
    search: "search",
    share: "share",
    shop: "shop"
)


let photoItens = (
    irmandade: "irmandade",
    mike: "mike",
    alessandre: "alessandre",
    bruna: "bruna",
    silvana1: "silvana1",
    ana: "ana",
    joao: "joao"
)

let post = (
    postDicionario: "postDicionario",
    postTextField: "postTextField",
    post1: "post1",
    post2: "post2"
)

struct StoryItens: Identifiable {
    let id : Int
    let name: String
    let photo: String
}

let storyItens = [
    StoryItens(id: 1,name: "Alessandre", photo: String(photoItens.alessandre)),
    StoryItens(id: 2,name: "Mike", photo: String(photoItens.mike)),
    StoryItens(id: 3,name: "Bruna", photo: String(photoItens.bruna)),
    StoryItens(id: 4,name: "Silvana", photo: String(photoItens.silvana1)),
    StoryItens(id: 5,name: "Ana Clara", photo: String(photoItens.ana)),
    StoryItens(id: 6,name: "João Pedro", photo: String(photoItens.joao)),
]

struct PostItem: Identifiable {
    let id = UUID().uuidString
    let icon: String
    let name: String
    let city: String
    let post: String
}

let postItens = [
    PostItem(icon: String(photoItens.mike), name: "Mike", city: "Florianópolis - SC", post: String(post.post2)),
    PostItem(icon: String(photoItens.bruna), name: "Bruna", city: "Florianópolis - SC", post: String(post.post1)),
    PostItem(icon: String(photoItens.silvana1), name: "Silvana", city: "Florianópolis - SC", post: String(post.post2)),
    PostItem(icon: String(photoItens.ana), name: "Ana Clara", city: "Belo Horizonte - MG", post: String(post.post1)),
    PostItem(icon: String(photoItens.joao), name: "João Pedro", city: "Belo Horizonte - MG", post: String(post.post2)),
    PostItem(icon: String(photoItens.alessandre), name: "Alesaandre", city: "Florianópolis - SC", post: String(post.post1))
]



