//
//  SelectCurrencyOptions.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/16/23.
//

import SwiftUI

fileprivate typealias Currencies = LOTRConverterStrings.Currencies

struct SelectCurrencyOptions: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                SelectCurrencyOptionsTab(currencyImage: Image("copperpenny"), currencyName: Currencies.copperPenny)
                SelectCurrencyOptionsTab(currencyImage: Image("silverpenny"), currencyName: Currencies.silverPenny)
                SelectCurrencyOptionsTab(currencyImage: Image("silverpiece"), currencyName: Currencies.silverPiece)
            }
            
            HStack() {
                SelectCurrencyOptionsTab(currencyImage: Image("goldpenny"), currencyName: Currencies.goldPenny)
                SelectCurrencyOptionsTab(currencyImage: Image("goldpiece"), currencyName: Currencies.goldPiece)
            }
        }
    }
}

struct SelectCurrencyOptions_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrencyOptions()
    }
}
