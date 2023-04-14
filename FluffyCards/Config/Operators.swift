//
//  Operators.swift
//  FluffyCards
//
//  Created by Alexander Snitko on 9.04.23.
//

import SwiftUI

func + (left: CGSize, right: CGSize) -> CGSize {
    CGSize(width: left.width + right.width, height: left.height + right.height)
}

func * (left: CGSize, right: CGFloat) -> CGSize {
  CGSize(
    width: left.width * right,
    height: left.height * right
  )
}
