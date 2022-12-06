//
//  ContentView.swift
//  NavigationStackView
//
//  Created by Alessandre Livramento on 03/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var myCars = garagem
    @State var mapStack: [Car] = []

    var body: some View {
        NavigationStack(path: $mapStack) {
            VStack {
                List {
                    ForEach(myCars) { car in
                        NavigationLink(value: car) {
                            Label(car.name, systemImage: "car")
                        }
                    }
                }
            }
            .navigationDestination(for: Car.self) { selectedCar in
                SecondaryView(myCar: selectedCar)
            }
        }
    }
}

struct NavigationStackView1: View {
    @State var myColors: [Color] = [.green, .pink, .mint, .cyan]
    @State var mapStack: [Color] = []

    var body: some View {
        NavigationStack(path: $mapStack) {
            VStack {
                ForEach(myColors, id: \.self) { color in
                    NavigationLink(value: color) {
                        Circle().fill(color)
                    }
                }

                Button("Partiu!") {
                    Task { await partiu() }
                }
            }
            .navigationDestination(for: Color.self) { selectedColor in
                selectedColor
                    .ignoresSafeArea()
                    .onTapGesture {
                        mapStack.removeAll()
                    }
            }
        }
    }
}

extension NavigationStackView1 {
    func partiu() async {
        // adiciona stack
        mapStack.append(.brown)
        try? await Task.sleep(nanoseconds: UInt64(1 * 1000000000))
        mapStack.append(.yellow)
        try? await Task.sleep(nanoseconds: UInt64(1 * 1000000000))
        mapStack.append(.red)
        try? await Task.sleep(nanoseconds: UInt64(1 * 1000000000))
        mapStack.append(.purple)
        try? await Task.sleep(nanoseconds: UInt64(1 * 1000000000))

        // remove stack
        mapStack.remove(at: mapStack.firstIndex(of: .purple)!)
        try? await Task.sleep(nanoseconds: UInt64(1.1 * 1000000000))
        mapStack.remove(at: mapStack.firstIndex(of: .red)!)
        try? await Task.sleep(nanoseconds: UInt64(1.1 * 1000000000))
        mapStack.remove(at: mapStack.firstIndex(of: .yellow)!)
        try? await Task.sleep(nanoseconds: UInt64(1.1 * 1000000000))
        mapStack.remove(at: mapStack.firstIndex(of: .brown)!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
