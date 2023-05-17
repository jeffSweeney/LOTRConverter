//
//  LOTRConverterStrings.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/15/23.
//

import SwiftUI

struct LOTRConverterStrings {
    struct ExchangeInfo {
        static let title = "Exchange Rates"
        static let infoDescription = "Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world, except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:"
    }
    
    struct ExchangeRate {
        static let goldPieceToGoldPenny = "1 Gold Piece = 4 Gold Pennies"
        static let goldPennyToSilverPiece = "1 Gold Penny = 4 Silver Pieces"
        static let silverPieceToSilverPenny = "1 Silver Piece = 4 Silver Pennies"
        static let silverPennyToCopperPenny = "1 Silver Penny = 100 Copper Pennies"
    }
    
    struct SelectCurrency {
        static let convertFrom = "Select the currency you are starting with:"
        static let convertTo = "Select the currency you would like to convert to:"
    }
    
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
}
