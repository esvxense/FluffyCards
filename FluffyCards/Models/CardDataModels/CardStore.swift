//
//  CardStore.swift
//  FluffyCards
//
//  Created by Alexander Snitko on 10.04.23.
//

import SwiftUI

class CardStore: ObservableObject {
    @Published var cards: [Card] = []
    
    init(defaultData: Bool = false) {
        if defaultData {
            cards = initialCards
        }
    }
    
    func index(for card: Card) -> Int? {
        cards.firstIndex { $0.id == card.id }
    }
    
    func removeCard(_ card: Card) {
        if let index = index(for: card) {
            cards.remove(at: index)
        }
    }
}
