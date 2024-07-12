//
//  ContentViewFactory.swift
//  SUIDecoupling
//
//  Created by Alex S. on 12.07.2024.
//

import SwiftUI

enum ContentViewFactory {
  static func createView() -> some View {
    var selectedRow = 0
    
    let c1 = NavigationLinkContext()
    let w1 = NavigationLinkWrapper(context: c1) {
      YellowView(count: selectedRow)
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Yellow details")
    }
    
    let c2 = NavigationLinkContext()
    let w2 = NavigationLinkWrapper(context: c2) {
      BlueView(count: selectedRow)
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Blue details")
    }
    
    let view = CountList(selection: { row in
      selectedRow = row
      selectedRow.isMultiple(of: 2) ? c1.activate() : c2.activate()
    })
    
    return VStack {
      view.navigationTitle("My list")
      w1
      w2
    }
  }
}
