//
//  ContentView.swift
//  NavigationStackBasics
//
//  Created by Alessandre Livramento on 08/04/23.
//

import SwiftUI

struct ContentView: View {
  var team = ["Ronaldo", "Neymar", "Kaká"]

  var body: some View {
    // A NavigationStack foi criada no arquivo app como o preview para de funcionat temos que colocar uma NavigationStack no preview também
    List {
      ForEach(team, id: \.self) { player in
        NavigationLink(player, destination: DetailView(title: player))
      }
    }
    .navigationTitle("Home")
    .navigationBarTitleDisplayMode(.large)
  }
}

struct NavigationStack1: View {
  var body: some View {
    NavigationStack {
      // NavigationLink com Vstack
      VStack(spacing: 40) {
        Label("House", systemImage: "house")
          .font(.largeTitle)

        // 1º Forma de navegação com link
        NavigationLink("link 1", destination: DetailView(title: "Fenômeno"))

        // 2º Forma de navegação com link
        NavigationLink(destination: DetailView(title: "Fenômeno")) {
          Text("link 2")
            .underline()
        }
      }
    }
  }
}

struct NavigationStack2: View {
  var body: some View {
    NavigationStack {
      // NavigationLink com List
      List {
        // veja que o NavigationLink tem o chevron ">" para indicar uma ação
        NavigationLink(destination: DetailView(title: "Fenômeno")) {
          Text("Detail")

          // Para funcionar o botão dentro de uma NavigationLink tem que colocar o buttonStyle -> borderless, senão vai dar conflito pois são dois componentes de toques.
          Button("more") {
            print("pressed...")
          }
          .buttonStyle(.borderless)
        }
      }
      .navigationTitle("Home")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct NavigationStack3: View {
  var title = "MeuTítulo"

  var body: some View {
    NavigationStack {
      // Visualmente o NavigationLink e o Button são bem parecidos
      VStack {
        NavigationLink(destination: DetailView(title: title)) {
          Text("link")
        }

        Button("link") {
          print("pressed...")
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationStack {
      ContentView()
    }
  }
}
