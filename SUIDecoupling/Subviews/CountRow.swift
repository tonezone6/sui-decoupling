//
//  RowView.swift
//  SUIDecoupling
//
//  Created by Alex S. on 12.07.2024.
//

import SwiftUI

struct CountRow: View {
  let count: Int
  let onTap: () -> Void
  
  var body: some View {
    Button("Row \(count)", action: onTap)
      .buttonStyle(.plain)
  }
}

#Preview {
  CountRow(count: 1, onTap: {})
}
