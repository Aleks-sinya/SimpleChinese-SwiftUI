//
//  CardsViewHSK1.swift
//  SimpleChinese–SwiftUI
//
//  Created by Алексей Синяговский on 15.06.2022.
//

import SwiftUI
import CardStack

struct CardsViewHSK1: View {
    
    @State var data: [CardsDataModel] = CardsDataModel.card
    
    var body: some View {
        CardStack(
            direction: LeftRight.direction,
            data: data,
            onSwipe: { card, direction in
                print("Swiped \(card.text) to \(direction)")
            },
            content: { cardModel, direction, _ in
                
            })
    }
}

struct CardsViewHSK1_Previews: PreviewProvider {
    static var previews: some View {
        CardsViewHSK1()
    }
}
