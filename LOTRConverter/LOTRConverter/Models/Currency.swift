//
//  Currency.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/16/23.
//

import SwiftUI

enum Currency: Double, CaseIterable {
    case copperPenny = 640
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
    
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
    
    var title: String {
        switch self {
        case .copperPenny:
            return "Copper Penny"
        case .silverPenny:
            return "Silver Penny"
        case .silverPiece:
            return "Silver Piece"
        case .goldPenny:
            return "Gold Penny"
        case .goldPiece:
            return "Gold Piece"
        }
    }
}
