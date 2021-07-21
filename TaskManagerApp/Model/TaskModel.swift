//
//  TaskModel.swift
//  TaskManagerApp
//
//  Created by Ari Supriatna on 21/07/21.
//

import Foundation

struct TaskModel: Identifiable {
  let id = UUID()
  let title: String
  let description: String
  var isFinished: Bool = false
}

extension TaskModel {
  
  static var stubs: [TaskModel] {
    return [
      .init(title: "Learn HOF", description: "Map, Filter, Reduce"),
      .init(title: "Learn SwiftUI", description: "Shape, GeometryReader"),
      .init(title: "Learn CoreML", description: "All about machine learning"),
      .init(title: "Learn UIKit", description: "Learn lifecycle UIKit"),
      .init(title: "Learn Data Structure", description: "Stack, Queue, Binary Tree", isFinished: true)
    ]
  }
  
}
