//
// Created by Michel Lopes.
// Copyright (c) Michel Lopes. All rights reserved.
//
    

import SwiftUI

struct ContentView: View {
    @State var myColors: [Color] = [.green, .pink, .mint, .cyan]
    @State var mapaStack: [Color] = []
    
    var body: some View {
        ///Navigation --
        NavigationStack(path: $mapaStack){
            VStack(spacing: 10){
                
                ///Items --
                ForEach(myColors, id:\.self){ color in
                    NavigationLink(value: color) {
                        Circle().fill(color)
                    }
                }
                
                Button("Partiu", action: partiu)
                    .padding()
            }
            
            ///Destination --
            .navigationDestination(for: Color.self) { selectedColor in
                selectedColor
                    .ignoresSafeArea()
                    .onTapGesture {
                        mapaStack.removeAll()
                    }
            }
        }
    }
    
    func partiu(){
        mapaStack.append(.brown)
        mapaStack.append(.yellow)
        mapaStack.removeLast()
        mapaStack.append(.red)
        mapaStack.append(.purple)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
