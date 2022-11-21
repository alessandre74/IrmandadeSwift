//
//  ContentView.swift
//  MVVMProjectArchitecture
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI


//Values Types - Struct com @State e para propagar um @State utilizamos @binding
//Reference types - Classes com protocolo ObservableObject e @StateObject e para propagar um @StateObject utilizamos @ObservedObject

//Podemos a propagar a viewModel por todas as subViews muito mais fácil, através do ambiente. Inicializamos o @StateObject e injetamos esse valor no ambiente com o modificador environmentObject(viewModel) e nas subViews declaramos uma variavel viewModel @EnvironmentObject do tipo da viewModel como por exemplo: @EnvironmentObject var viewModel: ProfileViewModel

//Podemos também injetar a viewModel através do modificador .environmentObject(viewModel) na primeira tela que define o app assim a primeira tela já tera acesso a viewModel declarando uma variavel com @EnvironmentObject do tipo da viewModel, mas não podemos nos esquecer de injetar uma viewModel lá embaixo no preview

//MARK: - VIEW
struct ProfileView: View {
  @EnvironmentObject var viewModel : ProfileViewModel
  
    var body: some View {
      VStack {
        ProfileDataView()
        ActionView()
      }
      .animation(.easeInOut, value: viewModel.isFollowing)
    }
}

struct ProfileDataView: View{
 @EnvironmentObject var viewModel: ProfileViewModel
  
  var body: some View{
    //Perfil
    Image(viewModel.user.picture)
      .resizable()
      .scaledToFill()
      .frame(width: 250, height: 250)
      .cornerRadius(250)
      .padding(.bottom,10)
    
    Text(viewModel.user.name)
      .font(.system(size: 46, weight: .bold))
    
    Text(viewModel.user.nick)
      .font(.system(size: 19, weight: .regular))
      .foregroundColor(.gray)
    
    Text(viewModel.userFollowers)
      .font(.system(size: 56, weight: .light))
      .padding(viewModel.isFollowing ? 40 : 25)
  }
}

struct ActionView: View{
  @EnvironmentObject var viewModel: ProfileViewModel
  
  var body: some View{
    VStack{
      //Seguir
      Button{viewModel.followToogle()} label: {
        Label(!viewModel.isFollowing ? "follow" : "unfollow", systemImage: "person.crop.circle.fill.badge.plus")
          .font(.title3)
          .frame(maxWidth:.infinity)
      }
      .buttonStyle(.borderedProminent)
      .controlSize(.large)
      .tint(!viewModel.isFollowing ? .blue : .black)
      
      //Enviar Mensagem
      Button{} label: {
        Label("enviar mensagem", systemImage: "paperplane.fill")
          .font(.title3)
          .frame(maxWidth:.infinity)
      }
      .buttonStyle(.borderedProminent)
      .controlSize(.large)
      .disabled(!viewModel.isFollowing)
    }
    .padding(20)
  }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
        .environmentObject(ProfileViewModel())
    }
}
