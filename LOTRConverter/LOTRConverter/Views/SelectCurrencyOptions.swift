//
//  SelectCurrencyOptions.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/16/23.
//

import SwiftUI

struct SelectCurrencyOptions: View {
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    @Binding var selectedCurrency: Currency
    
    var body: some View {
        LazyVGrid(columns: gridLayout) {
            ForEach(0..<5) { caseIndex in
                if Currency.allCases[caseIndex] == selectedCurrency {
                    SelectCurrencyOptionsTab(currency: Currency.allCases[caseIndex])
                                .overlay(RoundedRectangle(cornerRadius: 25)
                                            .stroke(lineWidth: 3)
                                            .opacity(0.5))
                                .shadow(color: .black, radius: 6)
                                .onTapGesture {
                                    selectedCurrency = Currency.allCases[caseIndex]
                                }
                } else {
                    SelectCurrencyOptionsTab(currency: Currency.allCases[caseIndex])
                }
            }
        }
    }
}

struct SelectCurrencyOptions_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrencyOptions(selectedCurrency: .constant(.goldPiece))
    }
}
