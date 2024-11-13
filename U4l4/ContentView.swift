//
//  ContentView.swift
//  U4l4
//
//  Created by Dmitrii Nazarov on 11.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            HStack{
                Image("header")
                Spacer()
            }
            .padding(.bottom, 15)
            
            ZStack(alignment: .top){
                Image("img1")
                    .resizable()
                    .frame(height: 300)
                    .clipShape(.rect(cornerRadius: 20))
                    
                    
                VStack(spacing: 5){
                    Text("Новый")
                        .foregroundStyle(.red)
                        .font(.system(size: 12 ))
                        .padding(.top, 25)
                        .opacity(0.9)
                    
                    Text("iPhone 15 Pro")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        
                    
                    Text("Из края вселенной прямо в ладони")
                        .font(.system(size: 20))
                        .foregroundStyle(.white)
                    
                    Button {
                        print("Hello, World!")
                    }
                    
                    label: {
                        Text("Купить")
                    }
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                    .padding(11)
                    .padding(.horizontal, 12)
                    .background(Color.white)
                    .cornerRadius(5)
                    .padding(.top, 10)
                }
            }
            .padding(.bottom, 20)
            
            ScrollView(.horizontal){
                HStack{
                    Card(image: "iphones", name: "iPhone")
                    Card(image: "watches", name: "iPhone")
                    Card(image: "ipads", name: "iPhone")
                }
            }
            .padding(.bottom, 20)
            
            Footer()
        }
        .padding(20)
    }
}

#Preview {
//    ContentView()
//        .background(Color.white)
    ContentView2()
        .background(Color.white)
        
}

struct Card: View {
    let image: String
    let name: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 140, height: 100)
            
            Text(name)
                .font(.system(size: 14))
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
        .padding(.horizontal)
        .padding(.vertical, 30)
        .padding(.top, 50)
        .background(
            
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .shadow(radius: 5, x: 0, y: 0)
                
        )
        .frame(width: 180, height: 250)
    }
}
    

struct Footer: View {
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text("Оплата")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Text("и доставка")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            .padding(.leading, 16)
            .padding(.top, 10)
            
            Image(.footer)
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 100)
               .padding(.trailing, 8)
        }
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
                .shadow(radius: 1)
        )
    }
}
