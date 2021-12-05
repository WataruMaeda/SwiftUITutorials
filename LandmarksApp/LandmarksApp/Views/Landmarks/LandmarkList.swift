//
//  LandmarkList.swift
//  LandmarksApp
//
//  Created by Wataru Maeda on 2021/11/22.
//

import SwiftUI

struct LandmarkList: View {
  @EnvironmentObject var modelData: ModelData
  @State private var showFavoritesOnly = false
  
  var filterLandmarks: [Landmark] {
    modelData.landmarks.filter { landmark in
      (!showFavoritesOnly || landmark.isFavorite)
    }
  }
  
  var body: some View {
    NavigationView {
      List {
        Toggle(isOn: $showFavoritesOnly) {
          Text("Favorite Only")
        }
        
        ForEach(filterLandmarks) { landmark in
          NavigationLink {
            LandmarkDetail(landmark: landmark)
          } label: {
            LandmarkRow(landmark: landmark)
          }
        }
      }
      //        List(filterLandmarks) { landmark in
      //          NavigationLink {
      //            LandmarkDetail(landmark: landmark)
      //          } label: {
      //            LandmarkRow(landmark: landmark)
      //          }
      //        }
      .navigationTitle("Landmarks")
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    //      ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
    //        LandmarkList()
    //        .previewDevice(PreviewDevice(rawValue: deviceName))
    //        .previewDisplayName(deviceName)
    //      }
    LandmarkList()
      .environmentObject(ModelData())
  }
}
