//
//  CardsListView.swift
//  FluffyCards
//
//  Created by Alexander Snitko on 7.04.23.
//

import SwiftUI

struct CardsListView: View {
    
    @EnvironmentObject var viewState: ViewState
    @EnvironmentObject var store: CardStore
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(store.cards) { card in
                    CardThumbnailView(card: card)
                        .contextMenu(menuItems: {
                            Button {
                                store.removeCard(card)
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }

                        })
                        .onTapGesture {
                            viewState.selectedCard = card
                            viewState.showAllCards.toggle()
                        }
                }
            }
        }
    }
}

struct CardsListView_Previews: PreviewProvider {
    static var previews: some View {
        CardsListView()
            .environmentObject(ViewState())
            .environmentObject(CardStore(defaultData: true))
    }
}

