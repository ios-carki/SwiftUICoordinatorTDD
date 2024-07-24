//   Created on 2024/07/22
//   Using Swift 5.0
//   ViewFive.swift
//   Created by Owen
  

import SwiftUI

struct ViewFive: View {
    @EnvironmentObject private var coordinator: Coordinator<ViewsDestination>
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            VStack {
                Text("ViewFive")
                
                Button {
                    coordinator.push(.reuseable(type: .views))
                } label: {
                    Text("Reuseable View로 이동")
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    ViewFive()
}

