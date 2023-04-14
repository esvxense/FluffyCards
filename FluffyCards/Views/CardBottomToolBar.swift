//
//  CardBottomToolBar.swift
//  FluffyCards
//
//  Created by Alexander Snitko on 8.04.23.
//

import SwiftUI

struct ToolbarButtonView: View {
    
    private let modalButton: [CardModal: (text: String, imageName: String)] = [
        .photoPicker: ("Photos", "photo"),
        .framePicker: ("Frames", "square.on.circle"),
        .stickerPicker: ("Stickers", "heart.circle"),
        .textPicker: ("Text", "textformat")
    ]
    let modal: CardModal
    
    var body: some View {
        if let text = modalButton[modal]?.text,
           let imageName = modalButton[modal]?.imageName {
            VStack {
                Image(systemName: imageName)
                    .font(.largeTitle)
                Text(text)
            }
            .padding(.top)
        }
    }
}

struct CardBottomToolBar: View {
    
    @Binding var cardModal: CardModal?
    
    var body: some View {
        HStack {
            Button {
                cardModal = .photoPicker
            } label: {
                ToolbarButtonView(modal: .photoPicker)
            }
            Button {
                cardModal = .framePicker
            } label: {
                ToolbarButtonView(modal: .framePicker)
            }
            Button {
                cardModal = .stickerPicker
            } label: {
                ToolbarButtonView(modal: .stickerPicker)
            }
            Button {
                cardModal = .textPicker
            } label: {
                ToolbarButtonView(modal: .textPicker)
            }

        }
    }
}

struct CardBottomToolBar_Previews: PreviewProvider {
    static var previews: some View {
        CardBottomToolBar(cardModal: .constant(.stickerPicker))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
