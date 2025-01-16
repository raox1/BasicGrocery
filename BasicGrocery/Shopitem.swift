//
//  Shopitem.swift
//  BasicGrocery
//
//  Created by Lalit Kumar on 16/01/25.
//

import SwiftUI

struct Shopitem: View {
    var imageName: String
    var title: String
    var price: Double
    var color: Color
    var selfIndex: Int
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundStyle(color)
                .opacity(0.25)
                .frame(width: 170, height: 230)
            VStack {
   
                Image(imageName)
                    .resizable()
                    .frame(width: 80, height: 80)
                Text(title)
                Button() {
                    cartItems.append(shopItems[selfIndex])
                } label: {
                    Text("$\(String(format: "%.2f", price))")
                        .foregroundStyle(.white)
                        .frame(width: 100, height: 40)
                        .background(color)
                }
            }
        }
    }
}

#Preview {
    Shopitem(imageName: "avocado", title: "Avocado", price: 4.00, color: .green, selfIndex: 0)
}
