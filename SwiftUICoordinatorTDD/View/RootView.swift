//   Created on 2024/07/22
//   Using Swift 5.0
//   ViewOne.swift
//   Created by Owen


import SwiftUI

import Factory

struct RootView: View {
    
    var body: some View {
        TabView {
            ViewTwo()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Views")
                }
            
            ProductView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Products")
                }
        }
        .background(Color.white)
    }
}

#Preview {
    RootView()
}
