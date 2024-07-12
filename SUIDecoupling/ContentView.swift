//
//  ContentView.swift
//  SUIDecoupling
//
//  Created by Alex S. on 12.07.2024.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      ContentViewFactory.createView()
    }
  }
}

#Preview {
  ContentView()
}
