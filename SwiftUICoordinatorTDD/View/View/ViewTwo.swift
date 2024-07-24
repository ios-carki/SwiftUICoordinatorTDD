//   Created on 2024/07/22
//   Using Swift 5.0
//   ViewTwo.swift
//   Created by Owen
  

import SwiftUI

struct ViewTwo: View {
    @ObservedObject private var coordinator = Coordinator<ViewsDestination>()
    
    var body: some View {
        NavigationStack(path: $coordinator.paths) {
            VStack {
                Text("View Two")
                
                Button {
                    coordinator.push(.view3)
                } label: {
                    Text("To View Three")
                }
                .buttonStyle(.borderedProminent)
            }
            .navigationDestination(for: ViewsDestination.self) { destination in
                switch destination {
                case .view3:
                    ViewThree()
                case .view4:
                    ViewFour()
                case .view5:
                    ViewFive()
                case .reuseable:
                    ReuseableView(type: .views, text: "Views", coordinator: coordinator)
                }
            }
        }
        .environmentObject(coordinator)
    }
}

#Preview {
    ViewTwo()
}
