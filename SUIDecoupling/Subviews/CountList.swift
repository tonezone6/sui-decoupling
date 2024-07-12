//
//  ListView.swift
//  SUIDecoupling
//
//  Created by Alex S. on 12.07.2024.
//

import SwiftUI

struct CountList: View {
  var selection: (Int) -> Void
  
  var body: some View {
    List {
      ForEach(1..<100) { count in
        CountRow(count: count, onTap: {
          selection(count)
        })
      }
    }
  }
}

#Preview {
  CountList(selection: { _ in })
}
