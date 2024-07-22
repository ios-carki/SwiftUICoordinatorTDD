//   Created on 2024/07/22
//   Using Swift 5.0
//   ViewCoordinator.swift
//   Created by Owen
  

import Foundation
final class ViewCoordinator<T: Hashable>: ObservableObject {
    @Published var paths: [T] = []
}

extension ViewCoordinator: CoordinatorProtocol {
    func push(_ path: T) {
        print("PATH: ", paths)
        print("추가할 PATH: ", path)
        paths.append(path)
        print("Result PATH: ", paths)
    }
    
    func pop() {
        print("PATH: ", paths)
        paths.removeLast()
        print("Result PATH: ", paths.count)
    }
    
    func popToView(_ to: T) {
        print("PATH: ", paths)
        guard let found = paths.firstIndex(where: { $0 == to }) else {
            return
        }
        
        let numToPop = (found..<paths.endIndex).count - 1
        paths.removeLast(numToPop)
        print("Result PATH: ", paths)
    }
    
    func popToRoot() {
        print("PATH: ", paths)
        paths.removeAll()
        print("Result PATH: ", paths)
    }
}
