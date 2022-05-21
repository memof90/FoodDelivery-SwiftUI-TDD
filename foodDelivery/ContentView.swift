//
//  ContentView.swift
//  foodDelivery
//
//  Created by Memo Figueredo on 20/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            CategoryView(imageName: "burger", categoryName: "Burger")
            CategoryView(imageName: "desserts", categoryName: "Desserts")
            CategoryView(imageName: "pasta", categoryName: "Pasta")
            CategoryView(imageName: "pizza", categoryName: "Pizza")
        }
    }
}

struct CategoryView: View {
    
    let imageName: String
    let categoryName: String
    
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 150, alignment: .center)
                    .clipped()
                    .cornerRadius(20.0)
                Text(categoryName)
                    .font(.custom("HelveticaNeue-Medium", size: 50))
                    .foregroundColor(.white)
            }
            Spacer()
        }
        .padding(.top, 5)
        .padding(.bottom, 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
