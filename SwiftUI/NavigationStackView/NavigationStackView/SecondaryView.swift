//
//  SecondaryView.swift
//  NavigationStackView
//
//  Created by Alessandre Livramento on 03/11/22.
//

import SwiftUI

struct SecondaryView: View {
    @State var myCar: Car

    var body: some View {
        VStack {
            Text(myCar.name)
                .foregroundColor(.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(myCar.color)
    }
}

struct SecondaryView_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryView(myCar: Car(name: "S10", color: .indigo))
    }
}
