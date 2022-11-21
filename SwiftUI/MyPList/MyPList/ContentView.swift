//
// Created by Michel Lopes.
// Copyright (c) 2021 Michel Lopes. All rights reserved.
//
    

import SwiftUI

struct ContentView: View {
    
    //ViewModel ---
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        
        NavigationView {
            Form {
                Section(header:Text("Cadastro")){
                    //Cadastrar um carro ---
                    InsertCarView()
                }
                
                Section(header:Text("Veículos")){
                    //Lista de carros existentes
                    GarageListView()
                    
                    //Ações gerais
                    ActionButtons()
                }
            }
            .environmentObject(viewModel)
            .navigationTitle("Garagem")
            .onAppear {
                //Sempre que o app for aberto verificar se já existem dados na PList.
                viewModel.updateGarage()
            }
        }
    }
}


//MARK: - Inserir Item

struct InsertCarView: View{
    @EnvironmentObject var viewModel: ContentViewModel
    
    var body: some View{
        
        //Campos de texto ---
        HStack {
            Label("Modelo:", systemImage: "car")
                .foregroundColor(.black)
            TextField("Digite..", text: $viewModel.newCar.model)
                .foregroundColor(.gray)
        }
        HStack {
            Label("Marca:", systemImage: "car")
                .foregroundColor(.black)
            TextField("Digite..", text: $viewModel.newCar.brand)
                .foregroundColor(.gray)
            Spacer()
        }
        
        //Ação de salvar ---
        Button { viewModel.createCar() } label: {
            Label("Save", systemImage: "square.and.arrow.down")
                .foregroundColor(.white)
        }
        .disabled(viewModel.newCar.model.isEmpty || viewModel.newCar.brand.isEmpty)
        .buttonStyle(.borderedProminent)
        .padding()
    }
}

//MARK: - Listar Itens

struct GarageListView: View{
    @EnvironmentObject var viewModel: ContentViewModel
    
    var body: some View{
        Group{
    
            //Lista de carros já cadastrados na PList ---
            ForEach(viewModel.garagem){ item in
                HStack {
                    Image(systemName: "car")
                    Text("\(item.model) - \(item.brand)")
                }.foregroundColor(.gray)
                
            }
        }
    }
}

//MARK: - Ações

struct ActionButtons: View{
    @EnvironmentObject var viewModel: ContentViewModel
    
    var body: some View{
        HStack {
            
            //Limpar carros da garagem ---
            Button { viewModel.resetGarage() } label: {
                Label("Delete All", systemImage: "trash")
                    .foregroundColor(.white)
            }
            .buttonStyle(.borderedProminent)
            .tint(.black)
            .disabled(viewModel.garagem.isEmpty)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
