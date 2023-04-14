//
//  Text+Extensions.swift
//  FluffyCards
//
//  Created by Alexander Snitko on 10.04.23.
//

import SwiftUI

extension Text {
  func scalableText(font: Font = Font.system(size: 1000)) -> some View {
    self
      .font(font)
      .minimumScaleFactor(0.01)
      .lineLimit(1)
  }
}
