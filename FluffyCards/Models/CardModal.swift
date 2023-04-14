//
//  CardModal.swift
//  FluffyCards
//
//  Created by Alexander Snitko on 8.04.23.
//

import Foundation

enum CardModal: Identifiable {
    
    var id: Int {
        hashValue
    }
    
    case photoPicker, framePicker, stickerPicker, textPicker
}
