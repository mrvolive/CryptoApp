//
//  ContentView.swift
//  CryptoApp
//
//  Created by maraval olivier on 11/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                HStack {
                    Text("Crypto App")
                        .font(.largeTitle)
                        .foregroundStyle(Color.mint)
                    Button{
                        // Incrémente les cryptos
                    } label: {
                        Image(systemName: "reload")
                    }
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                }
                
                Spacer()
            }
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
