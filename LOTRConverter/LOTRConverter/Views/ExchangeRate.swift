//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/15/23.
//

import SwiftUI

struct ExchangeRate: View {
    let fromImage: Image
    let exchangeInfo: String
    let toImage: Image
    
    var body: some View {
        HStack {
            fromImage
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(exchangeInfo)
            
            toImage
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

struct ExchangeRate_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeRate(fromImage: Image("goldpiece"),
                     exchangeInfo: LOTRConverterStrings.ExchangeRate.goldPieceToGoldPenny,
                     toImage: Image("goldpenny"))
    }
}
