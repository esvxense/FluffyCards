//
//  CardToolbar.swift
//  FluffyCards
//
//  Created by Alexander Snitko on 9.04.23.
//

import SwiftUI

struct CardToolbar: ViewModifier {
    
    @EnvironmentObject var viewState: ViewState
    @Binding var currentModal: CardModal?
    
    func body(content: Content) -> some View {
        content
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    viewState.showAllCards.toggle()
                } label: {
                    Text("Done")
                }
            }
            ToolbarItem(placement: .bottomBar) {
                CardBottomToolBar(cardModal: $currentModal)
            }
        }
    }
}

//struct CardToolbar_Previews: PreviewProvider {
//    static var previews: some View {
//        RoundedRectangle(cornerRadius: 15)
//            .modifier(CardToolbar())
//    }
//}
