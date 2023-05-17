//
//  SelectCurrencyOptions.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/16/23.
//

import SwiftUI

struct SelectCurrencyOptions: View {
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    @State var icons: [Currency] = [
        .copperPenny, .silverPenny, .silverPiece, .goldPenny, .goldPiece
    ]
    
    var body: some View {
        LazyVGrid(columns: gridLayout) {
            ForEach(icons, id: \.hashValue) { currency in
                SelectCurrencyOptionsTab(currency: currency)
            }
        }
    }
}

struct SelectCurrencyOptions_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrencyOptions()
    }
}
