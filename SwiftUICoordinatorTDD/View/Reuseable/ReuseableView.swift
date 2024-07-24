//   Created on 2024/07/24
//   Using Swift 5.0
//   ReuseableView.swift
//   Created by Owen
  

import SwiftUI

struct ReuseableView<T>: View where T: Hashable {
    var type: DestinationType
    var text: String
    var coordinator: Coordinator<T>
    
    init(type: DestinationType, text: String, coordinator: Coordinator<T>) {
        self.type = type
        self.text = text
        self.coordinator = coordinator
    }
    
    var body: some View {
        VStack {
            Text(text)
            
            Button {
                coordinator.popToRoot()
            } label: {
                Text("PopToRoot")
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
