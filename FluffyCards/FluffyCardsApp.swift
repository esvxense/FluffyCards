//
//  FluffyCardsApp.swift
//  FluffyCards
//
//  Created by Alexander Snitko on 7.04.23.
//

import SwiftUI

@main
struct FluffyCardsApp: App {
    
    @StateObject var viewState = ViewState()
    @StateObject var store = CardStore(defaultData: true)
    
    var body: some Scene {
        WindowGroup {
            CardsView()
                .environmentObject(viewState)
                .environmentObject(store)
        }
    }
}
