//
//  ContentView.swift
//  Extra NavigationLinkIntermediateView
//
//  Created by Alessandre Livramento on 16/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//    PrimeiraFormaDeNavegacao()

        SegundaFormaDeNavegacao()
    }
}

struct PrimeiraFormaDeNavegacao: View {
    @State var apresentandoCirculo = false

    var body: some View {
        NavigationView {
            VStack {
                // NavigationLink("Ir para o circulo", destination: Circulo())
                // NavigationLink("Ir para o quadrado", destination: Quadrado())

                NavigationLink(destination: Circulo(), isActive: $apresentandoCirculo) {
                    // Text("ir pro circulo (com navlink)")
                    EmptyView() // Utiliza o navigationLink cmo uma view não como botão
                }

                Button("Ir pro circulo (com botão)") {
                    // fazer processamentos
                    // esperar banco de dados
                    // esperar a api
                    // fazer qualquer coisa e depois navegar para outra tela
                    apresentandoCirculo.toggle()
                }
            }
        }
    }
}

struct SegundaFormaDeNavegacao: View {
    enum FormasGeometricas: String, Identifiable {
        var id: String { rawValue }

        case quadrado, circulo
    }

    @State var selected: FormasGeometricas? = nil

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Circulo(), tag: .circulo, selection: $selected) {
                    EmptyView() // NavigationLink como view não botão, assim podemos omitir o text
                }

                NavigationLink(destination: Quadrado(), tag: .quadrado, selection: $selected) {
                    EmptyView() // NavigationLink como view não botão, assim podemos omitir o text
                }

                Button("Ir pro circulo") {
                    selected = .circulo
                }

                Button("Ir pro quadrado") {
                    selected = .quadrado
                }
            }
        }
    }
}

struct Circulo: View {
    var body: some View {
        Circle()
            .frame(width: 250, height: 250)
            .foregroundColor(.red)
    }
}

struct Quadrado: View {
    var body: some View {
        Rectangle()
            .frame(width: 250, height: 250)
            .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
