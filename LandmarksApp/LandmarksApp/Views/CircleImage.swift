//
//  CircleImage.swift
//  LandmarksApp
//
//  Created by Wataru Maeda on 2021/11/19.
//

import SwiftUI

struct CircleImage: View {
  var image: Image
  
    var body: some View {
      image
        .clipShape(Circle())
        .overlay {
          Circle()
            .stroke(.white, lineWidth: 4)
        }
        .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
      CircleImage(image: Image("turtlerock"))
    }
}
