//
//  CardView.swift
//  SimpleChinese–SwiftUI
//
//  Created by Алексей Синяговский on 13.06.2022.
//

import SwiftUI

struct CardView: View {
    
    let card: CardsDataModel
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Image(card.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: geo.size.width)
                    .clipped()
                HStack {
                    Spacer()
                    Text(card.text)
                        .bold()
                    Spacer()
                    
                }
                .padding()
            }
            .background(.white)
            .cornerRadius(12)
            .shadow(radius: 4)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: CardsDataModel(image: "1", text: "ài"))
    }
}
