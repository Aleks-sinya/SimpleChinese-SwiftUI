//
//  Card.swift
//  SimpleChinese–SwiftUI
//
//  Created by Алексей Синяговский on 15.06.2022.
//

import UIKit

struct CardsDataModel: Identifiable {
    
    var id = UUID()
    var image: String
    var text: String
    
    
    static let card: [CardsDataModel] = [
    CardsDataModel(image: "1", text: "ài"),
    CardsDataModel(image: "2", text: "bā"),
    CardsDataModel(image: "3", text: "bàba"),
    CardsDataModel(image: "4", text: "bēizi"),
    CardsDataModel(image: "5", text: "běijīng"),
    CardsDataModel(image: "6", text: "běn"),
    CardsDataModel(image: "7", text: "bùkěqi"),
    CardsDataModel(image: "8", text: "bù"),
    CardsDataModel(image: "9", text: "cài"),
    CardsDataModel(image: "10", text: "chá")
    ]
    
}
