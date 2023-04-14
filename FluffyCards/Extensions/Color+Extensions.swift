//
//  Color+Extensions.swift
//  FluffyCards
//
//  Created by Alexander Snitko on 9.04.23.
//

import SwiftUI

extension Color {
    static let colors: [Color] = [
        .green, .red, .blue, .gray, .yellow, .pink, .orange, .purple
    ]
    
    static func random() -> Color {
        self.colors.randomElement() ?? .black
    }
}
