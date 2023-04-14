

import SwiftUI


let initialCards: [Card] = [
  Card(backgroundColor: .green, elements: initialElements),
  Card(backgroundColor: .orange),
  Card(backgroundColor: .red),
  Card(backgroundColor: .purple),
  Card(backgroundColor: .yellow)
]

let initialElements: [CardElement] = [
  ImageElement(
    transform: Transform(
      size: CGSize(width: 310, height: 225),
      rotation: .init(degrees: 10),
      offset: CGSize(width: 5, height: -245)),
    image: Image("hedgehog1")),
  ImageElement(
    transform: Transform(
      size: CGSize(width: 330, height: 238),
      rotation: .init(degrees: -25),
      offset: CGSize(width: 5, height: 200)),
    image: Image("hedgehog2")),
  ImageElement(
    transform: Transform(),
      image: Image("hedgehog3")),
  TextElement(
    transform: Transform(
      size: Settings.defaultElementSize * 1.2,
      rotation: .zero,
      offset: CGSize(width: -35, height: -125)),
    text: "Hedgehogs!!!",
    textColor: .blue)
]

