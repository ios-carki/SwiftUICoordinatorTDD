//   Created on 2024/07/22
//   Using Swift 5.0
//   ViewFive.swift
//   Created by Owen
  

import SwiftUI

struct ViewFive: View {
    @ObservedObject private var coordinator = Coordinator<ViewsDestination>()
    var body: some View {
        Text("ViewFive")
    }
}

#Preview {
    ViewFive()
}
