//
//  ProfileViewModel.swift
//  MVVMProjectArchitecture
//
//  Created by Alessandre Livramento on 15/08/22.
//

import Foundation

//MARK: - VIEWMODEL
class ProfileViewModel: ObservableObject {
  
  //Processed Data
 @Published var isFollowing = false
 @Published var userFollowers = String()
  
  var user = User(picture: "mike",
                  name: "Mike Bebezinho",
                  nick: "@mikelivramento", followers: 22.3663434343434343)
  
  init(){
    loadFollowers()
  }
  
  func loadFollowers(){
    self.userFollowers = customizeNumber(value: user.followers)
  }
  
  func customizeNumber(value: Double) -> String{
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.maximumSignificantDigits = 4
    formatter.locale = Locale(identifier: "en-US")
    let shorten =  formatter.string(for: value) ?? "0"
    return "\(shorten)K"
  }
  
  func followToogle(){
    self.isFollowing.toggle()
    self.isFollowing ? (self.user.followers += 1) : (self.user.followers -= 1)
    loadFollowers()
  }
}
