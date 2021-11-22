//
//  LandmarkList.swift
//  LandmarksApp
//
//  Created by Wataru Maeda on 2021/11/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
      NavigationView {
        List(landmarks) { landmark in
          NavigationLink {
            LandmarkDetail(landmark: landmark)
          } label: {
            LandmarkRow(landmark: landmark)
          }
        }
        .navigationTitle("Landmarks")
      }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
      
      ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
        LandmarkList()
        .previewDevice(PreviewDevice(rawValue: deviceName))
        .previewDisplayName(deviceName)
      }
      
        
    }
}
