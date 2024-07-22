//   Created on 2024/07/22
//   Using Swift 5.0
//   ProductView.swift
//   Created by Owen
  

import SwiftUI

struct ProductView: View {
    @ObservedObject private var coordinator = Coordinator<ProductsDestination>()
    @StateObject private var viewModel = ProductViewModel()
    
    var body: some View {
        NavigationStack(path: $coordinator.paths) {
            List {
                ForEach(viewModel.productData, id: \.self) { data in
                    ProductCell(product: Product(name: data.name, price: data.price))
                        .onTapGesture {
                            coordinator.push(.detail(data: data))
                        }
                }
            }
            .navigationDestination(for: ProductsDestination.self) { destination in
                switch destination {
                case .detail(let data):
                    ProductDetail(product: data)
                }
            }
        }
        .environmentObject(coordinator)
    }
}

#Preview {
    ProductView()
}
