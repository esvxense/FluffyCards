//
//  CardElement.swift
//  FluffyCards
//
//  Created by Alexander Snitko on 10.04.23.
//

import SwiftUI

protocol CardElement {
    var id: UUID { get }
    var transform: Transform { get set }
}

extension CardElement {
    func index(in array: [CardElement]) -> Int? {
        array.firstIndex { $0.id == id }
    }
}

struct ImageElement: CardElement {
    let id: UUID = UUID()
    var transform: Transform = Transform()
    var image: Image
}

struct TextElement: CardElement {
    let id: UUID = UUID()
    var transform: Transform = Transform()
    var text = ""
    var textColor = Color.black
    var textFont = "San Fransisco"
}
