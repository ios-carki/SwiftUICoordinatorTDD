//   Created on 2024/07/22
//   Using Swift 5.0
//   ProductDetail.swift
//   Created by Owen
  

import SwiftUI

struct ProductDetail: View {
    @EnvironmentObject private var coordinator: Coordinator<ProductsDestination>
    var product: Product
    
    var body: some View {
        VStack {
            Text(product.name)
                .font(.largeTitle)
            
            Text("\(product.price)₩")
        }
    }
}

#Preview {
    ProductDetail(product: Product(name: "레고", price: 12000))
}
