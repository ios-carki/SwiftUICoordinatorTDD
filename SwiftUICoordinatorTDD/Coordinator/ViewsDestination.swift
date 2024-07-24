//   Created on 2024/07/22
//   Using Swift 5.0
//   ViewsDestination.swift
//   Created by Owen
  

import Foundation

enum ViewsDestination: Hashable {
    // MARK: Views
    case view3
    
    case view4
    
    case view5
    
    case reuseable(type: DestinationType)
}
