//   Created on 2024/07/22
//   Using Swift 5.0
//   ProductViewModel.swift
//   Created by Owen
  

import Foundation

final class ProductViewModel: ObservableObject {
    @Published var productData: [Product] = [
        Product(name: "레고", price: 12000),
        Product(name: "카메라", price: 112000),
        Product(name: "핸드폰", price: 1512000),
        Product(name: "거치대", price: 2000),
        Product(name: "테블릿", price: 1312000),
        Product(name: "노트북", price: 3212000),
        Product(name: "음료수", price: 2000),
        Product(name: "냉장고", price: 5112000),
        Product(name: "책상", price: 612000),
        Product(name: "선반", price: 112000),
        Product(name: "쓰레기봉투", price: 500),
        Product(name: "선풍기", price: 52000),
        Product(name: "텀블러", price: 42000),
        Product(name: "키보드", price: 212000),
        Product(name: "마우스", price: 112000),
    ]
}
