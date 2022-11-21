//
//  ContentView.swift
//  ListFormView
//
//  Created by Alessandre Livramento on 15/08/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    List{
      Section("Section 1") {
        HStack{
          Image(systemName: "airplane")
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
            .background(.orange)
            .cornerRadius(4)
          Text("Avião")
        }
        
        HStack{
          Image(systemName: "wifi")
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
            .background(.blue)
            .cornerRadius(4)
          Text("Wi-Fi")
        }
        
        HStack{
          Image(systemName: "antenna.radiowaves.left.and.right")
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
            .background(.green)
            .cornerRadius(4)
          Text("Cellular")
        }
        
        HStack{
          Image(systemName: "bell")
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
            .background(.purple)
            .cornerRadius(4)
          Text("Notificações")
        }
      }
      
      
      Section("Section 2"){
        HStack{
          Image(systemName: "airplane")
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
            .background(.orange)
            .cornerRadius(4)
          Text("Avião")
        }
        
        HStack{
          Image(systemName: "wifi")
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
            .background(.blue)
            .cornerRadius(4)
          Text("Wi-Fi")
        }
        
        HStack{
          Image(systemName: "antenna.radiowaves.left.and.right")
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
            .background(.green)
            .cornerRadius(4)
          Text("Cellular")
        }
        
        HStack{
          Image(systemName: "bell")
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
            .background(.purple)
            .cornerRadius(4)
          Text("Notificações")
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
