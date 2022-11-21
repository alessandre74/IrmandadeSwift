//
//  ContentView.swift
//  StateBindingView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Form {
      AppearanceView()
      
      BrightnessView()
      
      NightShiftView()
      
      AutomaticBlockingView()
      
      TextSizeView()
  
      ZoomView()
    }
  }
}

//MARK: Appearance
struct AppearanceView: View {
  
  @State var automaticoLigado = false
  
  let tituloAparencia = "APARÊNCIA"
  
  var body: some View {
    Section(header: Text(tituloAparencia)){
      Image("theme")
        .resizable()
        .scaledToFit()
      
        Toggle("Automática", isOn: $automaticoLigado)
          .font(.system(size: 14))
    }
  }
}

//MARK: Brightness
struct BrightnessView: View {
  @State var brilhoDaTela = 90.0
  @State var trueTone = false
  
  let tituloBrilho = "BRILHO"
  let rodapebrilho = "Adapte a tela do iPhone automaticamente de acordo com a iluminação ambiente para que as cores apareçam consistentemente em ambientes diferentes."
  
  var body: some View {
    Section (header: Text(tituloBrilho), footer: Text(rodapebrilho)){
      HStack{
        
        Image(systemName: "sun.max.fill")
          .foregroundColor(.gray)
        
        Slider(value: $brilhoDaTela, in: 0...100)
          .onChange(of: brilhoDaTela) { value in
            print(brilhoDaTela)
          }
        
        Image(systemName: "sun.max.fill")
          .resizable()
          .frame(width: 25, height: 25)
          .foregroundColor(.gray)
      }
      
        Toggle("True Tone", isOn: $trueTone)
          .font(.system(size: 14))
    }
  }
}

//MARK: Night Shift
struct NightShiftView: View {
  var body: some View {
    Section {
      HStack {

        Text("Night Shift")
          .font(.system(size: 14))
        
        Spacer()
        
        Text("Desativado")
          .font(.system(size: 14))
          .foregroundColor(.gray)
        
        Image(systemName: "chevron.right")
          .font(.system(size: 12))
          .foregroundColor(.gray)
      }
    }
  }
}

//MARK: Automatic Blocking
struct AutomaticBlockingView: View {
  
  @State var elevarDespertar = true
  
  var body: some View {
    Section {
      HStack{
        Text("Bloqueio Automático")
          .font(.system(size: 14))
        
        Spacer()
        
        Text("30 segundos")
          .font(.system(size: 14))
          .foregroundColor(.gray)
      }
      
        Toggle("Elevar para Despertar ", isOn: $elevarDespertar)
          .font(.system(size: 14))
    }
  }
}

//MARK: Text Size
struct TextSizeView: View {
  
  @State var negrito = false
  
  var body: some View {
    Section {
      HStack{
        Text("Tamanho do Texto")
          .font(.system(size: 14))
        
        Spacer()
        
        Image(systemName: "chevron.right")
          .font(.system(size: 12))
          .foregroundColor(.gray)
      }
    
       Toggle("Negrito", isOn: $negrito)
          .font(.system(size: 14))
    }
  }
}

//MARK: Zoom
struct ZoomView: View {
  
  let tituloZoom = "ZOOM DA TELA"
  let rodapeZoom = "Escolha uma visualização para o iPhone. Ampliado torna maiores os controles. Padrão mostra mais conteúdo."
  
  var body: some View {
    Section(header: Text(tituloZoom ), footer: Text(rodapeZoom)){
      HStack{
        Text("Visualização")
          .font(.system(size: 14))
        
        Spacer()
        
        Text("Padrão")
          .font(.system(size: 14))
          .foregroundColor(.gray)
        
        Image(systemName: "chevron.right")
          .font(.system(size: 12))
          .foregroundColor(.gray)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
