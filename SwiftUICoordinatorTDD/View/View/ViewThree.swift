//   Created on 2024/07/22
//   Using Swift 5.0
//   ViewThree.swift
//   Created by Owen
  

import SwiftUI

struct ViewThree: View {
    @EnvironmentObject private var coordinator: Coordinator<ViewsDestination>
    
    var body: some View {
        Button {
            coordinator.push(.view4)
        } label: {
            Text("View Two")
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ViewThree()
}
