//
//  CategoryHome.swift
//  LandmarksApp
//
//  Created by Wataru Maeda on 2021/12/18.
//

import SwiftUI

struct CategoryHome: View {
  @EnvironmentObject var modelData: ModelData
  @State private var showingProfile = false

  var body: some View {
    NavigationView {
      List {
        modelData.features[0].image
          .resizable()
          .scaledToFill()
          .frame(height: 200)
          .clipped()
          .listRowInsets(EdgeInsets())
        
        ForEach(modelData.categoris.keys.sorted(), id: \.self) { key in
          CategoryRow(categoryname: key, items: modelData.categoris[key]!)
        }
        .listRowInsets(EdgeInsets())
      }
        .listStyle(.inset)
        .navigationTitle("Featured")
        .toolbar {
          Button {
            showingProfile.toggle()
          } label: {
            Label("User Profile", systemImage: "person.crop.circle")
          }
        }
        .sheet(isPresented: $showingProfile) {
          ProfileHost()
            .environmentObject(modelData)
        }
    }
  }
}

struct CategoryHome_Previews: PreviewProvider {
  static var previews: some View {
    CategoryHome()
      .environmentObject(ModelData())
  }
}
