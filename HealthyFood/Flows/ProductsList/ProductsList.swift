//
//  ProductsList.swift
//  HealthyFood (iOS)
//
//  Created by Роман on 26.03.2022.
//

import SwiftUI

struct ProductsList: View {
    private let navigationTitle: String = "List of my products"
    
    var body: some View {
        ZStack {
            BackgroundView()
            List {
                ForEach(TypeOfProduct.allCases) { item in
                    NavigationLink {
                        ProductScreen(product: item)
                    } label: {
                        Text(item.titleList)
                    }
                }
                .listRowBackground(Color.gray.opacity(0.3))
            }
        }
        .navigationTitle(navigationTitle)
    }
}

struct ProductsList_Previews: PreviewProvider {
    static var previews: some View {
        ProductsList()
    }
}
