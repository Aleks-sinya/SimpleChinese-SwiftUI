//
//  CardThumbsView.swift
//  SimpleChinese–SwiftUI
//
//  Created by Алексей Синяговский on 15.06.2022.
//

import SwiftUI
import CardStack

struct CardThumbsView: View {
    
    @State var data: [CardsDataModel] = CardsDataModel.card
    
    var body: some View {
        CardStack(
            direction: LeftRight.direction,
            data: data,
            onSwipe: { card, direction in
                print("Swiped \(card.text) to \(direction)")
            },
            content: { card, direction, _ in
                CardViewWithThumbs(card: card, direction: direction)
            }
        )
        .padding()
        .scaledToFit()
        .frame(alignment: .center)
        .navigationTitle("HSK1")
    }
}

struct CardThumbsView_Previews: PreviewProvider {
    static var previews: some View {
        CardThumbsView()
    }
}
