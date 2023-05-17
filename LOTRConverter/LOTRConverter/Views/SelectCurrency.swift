//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/15/23.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismissPage
    
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
                    .padding(.bottom, 30)
                
                Text(LOTRConverterStrings.SelectCurrency.convertTo)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                SelectCurrencyOptions()
                    .padding(.bottom, 30)
                
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
        SelectCurrency()
    }
}
