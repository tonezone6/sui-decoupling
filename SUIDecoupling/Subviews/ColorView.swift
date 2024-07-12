//
//  ColorView.swift
//  SUIDecoupling
//
//  Created by Alex S. on 12.07.2024.
//

import SwiftUI

struct ColorView: View {
  let description: String
  let background: Color
  
  var body: some View {
    ZStack {
      background.opacity(0.1).ignoresSafeArea()
      Text(description)
    }
  }
}

struct YellowView: View {
  let count: Int
  var body: some View {
    ColorView(description: "Selected \(count)", background: .yellow)
  }
}

struct BlueView: View {
  let count: Int
  var body: some View {
    ColorView(description: "Selected \(count)", background: .blue)
  }
}

#Preview {
  ColorView(description: "Green", background: .green)
}
