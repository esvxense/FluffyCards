//
//  PencilDrawer.swift
//  FluffyCards
//
//  Created by Alexander Snitko on 24.04.23.
//

import SwiftUI
import PencilKit

struct PencilDrawer: View {
    
    @State private var canvas = PKCanvasView()
    
    var body: some View {
        PencilDrawerRepresentable(canvas: $canvas)
    }
}

struct PencilDrawerRepresentable: UIViewRepresentable {
    @Binding var canvas: PKCanvasView
    func makeUIView(context: Context) -> some UIView {
        canvas.drawingPolicy = .anyInput
        return canvas
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

struct PencilDrawer_Previews: PreviewProvider {
    static var previews: some View {
        PencilDrawer()
    }
}
