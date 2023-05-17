//
//  SelectCurrencyOptions.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/16/23.
//

import SwiftUI

struct SelectCurrencyOptions: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                SelectCurrencyOptionsTab(currency: .copperPenny)
                SelectCurrencyOptionsTab(currency: .silverPenny)
                SelectCurrencyOptionsTab(currency: .silverPiece)
            }
            
            HStack() {
                SelectCurrencyOptionsTab(currency: .goldPenny)
                SelectCurrencyOptionsTab(currency: .goldPiece)
            }
        }
    }
}

struct SelectCurrencyOptions_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrencyOptions()
    }
}
