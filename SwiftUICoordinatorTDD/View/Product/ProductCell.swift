//   Created on 2024/07/22
//   Using Swift 5.0
//   ProductCell.swift
//   Created by Owen
  

import SwiftUI

struct ProductCell: View {
    var product: Product
    var body: some View {
        VStack(alignment: .leading) {
            Text(product.name)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("가격: \(product.price) 원")
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.all, 4)
    }
}

#Preview {
    ProductCell(product: Product(name: "레고", price: 12000))
}
