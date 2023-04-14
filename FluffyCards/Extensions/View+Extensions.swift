//
//  View+Extensions.swift
//  FluffyCards
//
//  Created by Alexander Snitko on 9.04.23.
//

import SwiftUI

extension View {
    func resizibleView(transform: Binding<Transform>) -> some View {
        return modifier(ResizibleView(transform: transform))
    }
}
