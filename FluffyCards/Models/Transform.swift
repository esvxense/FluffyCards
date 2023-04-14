//
//  Transform.swift
//  FluffyCards
//
//  Created by Alexander Snitko on 8.04.23.
//

import SwiftUI

struct Transform {
    var size = CGSize(width: Settings.defaultElementSize.width, height: Settings.defaultElementSize.height)
    var rotation: Angle = .zero
    var offset: CGSize = .zero
}
