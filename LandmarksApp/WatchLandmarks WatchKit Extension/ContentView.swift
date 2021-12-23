//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Wataru Maeda on 2021/12/22.
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
