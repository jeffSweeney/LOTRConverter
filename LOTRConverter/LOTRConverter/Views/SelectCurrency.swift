//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/15/23.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismissPage
    @Binding var leftCurrency: Currency
    @Binding var rightCurrency: Currency
    
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
                
                SelectCurrencyOptions(selectedCurrency: $leftCurrency)
                    .padding([.bottom, .leading, .trailing])
                
                Text(LOTRConverterStrings.SelectCurrency.convertTo)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                SelectCurrencyOptions(selectedCurrency: $rightCurrency)
                    .padding([.bottom, .leading, .trailing])
                
                Button("Done") {
                    dismissPage()
                }
                .padding()
                .background(Color(.systemBrown).opacity(0.75))
                .font(.title)
                .foregroundColor(.white)
                .cornerRadius(25)
            }
        }
    }
}

struct SelectCurrency_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrency(leftCurrency: .constant(.goldPenny), rightCurrency: .constant(.goldPiece))
    }
}
