//
//  NavigationPushWrapper.swift
//  SUIDecoupling
//
//  Created by Alex S. on 12.07.2024.
//

import SwiftUI

class NavigationLinkContext: ObservableObject {
  @Published var active = false
  func activate() { active.toggle() }
}

struct NavigationLinkWrapper<Content: View>: View {
  @ObservedObject var context: NavigationLinkContext
  let content: () -> Content
  
  var body: some View {
    NavigationLink(
      isActive: $context.active,
      destination: content,
      label: EmptyView.init
    )
  }
}
