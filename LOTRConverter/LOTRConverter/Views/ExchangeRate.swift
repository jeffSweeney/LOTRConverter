//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/15/23.
//

import SwiftUI

typealias constants = LOTRConverterStrings

struct ExchangeRate: View {
    let fromCurrency: constants.Currency
    let exchangeInfo: String
    let toCurrency: constants.Currency
    
    var body: some View {
        HStack {
            fromCurrency.image
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(exchangeInfo)
            
            toCurrency.image
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

struct ExchangeRate_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeRate(fromCurrency: constants.Currency.goldPiece,
                     exchangeInfo: LOTRConverterStrings.ExchangeRate.goldPieceToGoldPenny,
                     toCurrency: constants.Currency.goldPenny)
        .previewLayout(.sizeThatFits)
    }
}
