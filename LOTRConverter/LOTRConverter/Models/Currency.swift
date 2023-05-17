//
//  Currency.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/16/23.
//

import SwiftUI

enum Currency: String {
    case copperPenny = "Copper Penny"
    case silverPenny = "Silver Penny"
    case silverPiece = "Silver Piece"
    case goldPenny = "Gold Penny"
    case goldPiece = "Gold Piece"
    
    var image: Image {
        switch self {
        case .copperPenny:
            return Image("copperpenny")
        case .silverPenny:
            return Image("silverpenny")
        case .silverPiece:
            return Image("silverpiece")
        case .goldPenny:
            return Image("goldpenny")
        case .goldPiece:
            return Image("goldpiece")
        }
    }
}
