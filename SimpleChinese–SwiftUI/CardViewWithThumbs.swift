//
//  CardViewWithThumbs.swift
//  SimpleChinese–SwiftUI
//
//  Created by Алексей Синяговский on 15.06.2022.
//

import SwiftUI
import CardStack

struct CardViewWithThumbs: View {
    
    let card: CardsDataModel
    let direction: LeftRight?
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .topLeading) {
                CardView(card: card)
                Image(systemName: "hand.thumbsup.fill")
                    .resizable()
                    .foregroundColor(.green)
                    .opacity(direction == .right ? 1 : 0)
                    .frame(width: 100, height: 100)
                    .padding()
            }
            
            Image(systemName: "hand.thumbsdown.fill")
                .resizable()
                .foregroundColor(.red)
                .opacity(direction == .left ? 1 : 0)
                .frame(width: 100, height: 100)
                .padding()
        }
        .animation(.default)
    }
}

struct CardViewWithThumbs_Previews: PreviewProvider {
    static var previews: some View {
        CardViewWithThumbs(card: CardsDataModel(image: "1", text: "ài"), direction: .left)
    }
}
