//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by arta.zidele on 27/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Title Text")
                    .font(.title)
                
                HStack {
                    Text("This is left subheadline")
                    Spacer()
                    Text("This is right subheadline")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text("This is title2")
                    .font(.title2)
                Text("This is the text at bottom")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
