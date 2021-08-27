//
//  CircleImage.swift
//  SwiftUITutorial
//
//  Created by arta.zidele on 27/08/2021.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("riga")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
