//
//  ContentView.swift
//  CryptoApp
//
//  Created by maraval olivier on 11/02/2025.
//

import SwiftUI

struct ContentView: View {
    @State var convertTo: String = "$"
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                
                HStack {
                    Spacer()
                    Spacer()
                    Text("Crypto App")
                        .font(.largeTitle)
                        .foregroundStyle(.mint)
                    Spacer()
                    Button{
                        // Incrémente les cryptos
                    } label: {
                        Image(systemName: "arrow.clockwise.circle")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.mint)
                    }
                    .frame(height:40)
                    Spacer()
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Spacer()
                    Image(systemName: "calendar.circle.fill")
                        .resizable()
                        .foregroundStyle(.mint)
                        .scaledToFit()
                    Spacer()
                    Text("Monday September 13, 2021")
                        .font(.headline)
                        .foregroundStyle(.white)
                    Spacer()
                    Spacer()
                }
                .frame(height:40)
                Spacer()
                
                HStack {
                    CurrencyView(name: "BIT",image: "btc",amount: 51)
                    CurrencyView(name: "ETH",image: "eth",amount: 21)
                    CurrencyView(name: "XRP",image: "rpl",amount: 6)
                    CurrencyView(name: "XLM",image: "stl",amount: 11)
                }
                Spacer()
                Button("Convert to \(convertTo)")
                {
                    if convertTo == "$" {
                        convertTo = "€"
                    } else if convertTo == "€" {
                        convertTo = "$"
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 50, bottom: 10, trailing: 50))
                .foregroundStyle(.white)
                .background(.mint)
                .cornerRadius(10)
                
            }
        }
    }
}

struct CurrencyView: View {
    var name: String
    var image: String
    var amount: Int
    
    var body: some View {
        VStack{
            Text(name)
                .foregroundStyle(.white)
                .font(.headline)
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .border(.white)
            Text(String(amount) + "k")
                .foregroundStyle(.white)
                .font(.headline)
        }
    }
    
    
}

#Preview {
    ContentView()
}

