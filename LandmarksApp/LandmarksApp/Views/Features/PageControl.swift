//
//  PageControl.swift
//  LandmarksApp
//
//  Created by Wataru Maeda on 2021/12/22.
//

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
  var numberOfPages: Int
  @Binding var currentPage: Int
  
  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }
  
  func makeUIView(context: Context) -> UIPageControl {
    let control = UIPageControl()
    control.numberOfPages = numberOfPages
    control.addTarget(
      context.coordinator,
      action: #selector(Coordinator.udpateCurrentPage(sender:)),
      for: .valueChanged
    )
    
    return control
  }
  
  func updateUIView(_ uiView: UIPageControl, context: Context) {
    uiView.currentPage = currentPage
  }
  
  class Coordinator: NSObject {
    var control: PageControl
    
    init(_ control: PageControl) {
      self.control = control
    }
    
    @objc
    func udpateCurrentPage(sender: UIPageControl) {
      control.currentPage = sender.currentPage
    }
  }
}
