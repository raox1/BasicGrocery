//
//  Shop.swift
//  BasicGrocery
//
//  Created by Lalit Kumar on 16/01/25.
//

import SwiftUI

struct Shop: View {
    
    
    @State var goToCart = false
    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var items: [[Any]] = shopItems
    
    var body: some View {
        VStack(spacing: 5) {
            VStack {
                Text("Good morning,")
                    .frame(width: 320, alignment: .leading)
                    .foregroundStyle(.gray)
                Text("Let's order fresh\nitems for you")
                    .font(.system(size: 38, weight: .semibold, design: .rounded))
                    .frame(width: 320, alignment: .leading)
                
                Spacer().frame(height: 75)
                Text("Fresh items")
                    .frame(width: 320, alignment: .leading)
                    .foregroundStyle(.gray)
            }.padding(20)
            
            ScrollView() {
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(0..<items.count, id:\.self) { item in
                        Shopitem(imageName: items[item][0] as! String, title: items[item][1] as! String, price: items[item][2] as! Double, color: items[item][3] as! Color, selfIndex: item)
                    }
                }
            }.padding(15)
        }
        .navigationDestination(isPresented: $goToCart) {
            Cart()
        }
        .toolbar {
            ToolbarItem(placement:  .topBarTrailing) {
                Button {
                    goToCart = true
                } label: {
                    Image(systemName: "cart")
                }
            }
        }
    }
}

#Preview {
    Shop()
}
