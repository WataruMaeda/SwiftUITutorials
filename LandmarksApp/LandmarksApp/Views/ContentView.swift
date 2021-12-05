//
//  ContentView.swift
//  LandmarksApp
//
//  Created by Wataru Maeda on 2021/09/12.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    LandmarkList()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(ModelData())
  }
}
