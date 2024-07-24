//   Created on 2024/07/22
//   Using Swift 5.0
//   ViewThree.swift
//   Created by Owen
  

import SwiftUI

struct ViewThree: View {
    @EnvironmentObject private var coordinator: Coordinator<ViewsDestination>
    
    var body: some View {
        VStack {
            Text("View Three")
            
            Button {
                coordinator.push(.view4)
            } label: {
                Text("To View Four")
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ViewThree()
}
