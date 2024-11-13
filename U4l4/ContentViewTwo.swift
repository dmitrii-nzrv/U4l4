//
//  ContentViewTwo.swift
//  U4l4
//
//  Created by Dmitrii Nazarov on 12.11.2024.
//

import SwiftUI

// Модель продукта
struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: String
    let imageName: String
}

// Моковые данные
let mockProducts = [
    Product(name: "iPhone 14 Pro 256Gb Серебристый", price: "107 990 ₽", imageName: "card1"),
    Product(name: "iPhone 14 Pro 512Gb Золото-зеленый", price: "119 990 ₽", imageName: "card2"),
    Product(name: "iPhone 14 128Gb Голубой", price: "62 990 ₽", imageName: "card1"),
    Product(name: "iPhone 14 512Gb Сияющая звезда", price: "119 990 ₽", imageName: "card2"),
    Product(name: "iPhone 14 Pro 256Gb Серебристый", price: "107 990 ₽", imageName: "card1"),
    Product(name: "iPhone 14 Pro 512Gb Золото-зеленый", price: "119 990 ₽", imageName: "card2"),
    Product(name: "iPhone 14 128Gb Голубой", price: "62 990 ₽", imageName: "card1"),
    Product(name: "iPhone 14 512Gb Сияющая звезда", price: "119 990 ₽", imageName: "card2")
]

struct ContentView2: View {
    var body: some View {
        VStack{
            HStack{
                Image(.header)
                Spacer()
            }
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                    ForEach(mockProducts) { product in
                        ProductCard(product: product)
                    }
                }
                
                
                //.background(Color(.systemGray6))
            }
        }
        .padding(.horizontal)
    }
    
}

struct ProductCard: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            //.frame(height: 150)
            
            
            HStack{
                Text(product.price)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                Spacer()
                Image(systemName: "circle")
            }
            Text(product.name)
                .font(.body)
                .foregroundColor(.black)
            
            
            Button(action: {
                print("Купить \(product.name)")
            }) {
                Text("Купить")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
                .shadow(color: Color.gray.opacity(0.3), radius: 8, x: 0, y: 0)
        )
    }
}
