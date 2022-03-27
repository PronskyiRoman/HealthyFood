//
//  ProductScreen.swift
//  HealthyFood (iOS)
//
//  Created by Роман on 26.03.2022.
//

import SwiftUI

struct ProductScreen: View {
    private let product: TypeOfProduct
    
    init (product: TypeOfProduct) {
        self.product = product
    }
    
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                Text("")
            }
        }
        .navigationTitle(product.titleScreen)
    }
}

struct ProductScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductScreen(product: .salt(amount: Amount()))
    }
}
