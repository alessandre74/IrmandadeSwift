//
//  MVVMProjectArchitectureApp.swift
//  MVVMProjectArchitecture
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

@main
struct MVVMProjectArchitectureApp: App {
    var body: some Scene {
        WindowGroup {
          ProfileView()
            .environmentObject(ProfileViewModel())
        }
    }
}
