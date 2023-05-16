//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/15/23.
//

import SwiftUI

struct SelectCurrency: View {
    var body: some View {
        ZStack {
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)
            
            VStack {
                Text(LOTRConverterStrings.SelectCurrency.convertFrom)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                SelectCurrencyOptions()
                
                Text(LOTRConverterStrings.SelectCurrency.convertTo)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                SelectCurrencyOptions()
            }
        }
    }
}

struct SelectCurrency_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrency()
    }
}
