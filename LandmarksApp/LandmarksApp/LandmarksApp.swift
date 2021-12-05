//
//  LandmarksApp.swift
//  LandmarksApp
//
//  Created by Wataru Maeda on 2021/09/12.
//

import SwiftUI

@main
struct LandmarksApp: App {
  @StateObject private var modelData = ModelData()
  var body: some Scene {
      WindowGroup {
        ContentView()
          .environmentObject(modelData)
      }
  }
}
