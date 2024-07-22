//   Created on 2024/07/22
//   Using Swift 5.0
//   ViewFour.swift
//   Created by Owen
  

import SwiftUI

struct ViewFour: View {
    @EnvironmentObject private var coordinator: Coordinator<ViewsDestination>
    var body: some View {
        Button {
            coordinator.push(.view5)
        } label: {
            Text("View Two")
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ViewFour()
}
