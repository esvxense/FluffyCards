//
//  ViewState.swift
//  FluffyCards
//
//  Created by Alexander Snitko on 8.04.23.
//

import SwiftUI

class ViewState: ObservableObject {
    
    @Published var showAllCards = true {
        didSet {
            if showAllCards {
                selectedCard = nil
            }
        }
    }
    var selectedCard: Card?
    
    convenience init(card: Card) {
        self.init()
        showAllCards = false
        selectedCard = card
    }
}
