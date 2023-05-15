//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/13/23.
//

import SwiftUI

fileprivate typealias ExchangeInfoStrings = LOTRConverterStrings.ExchangeInfo
fileprivate typealias ExchangeRateStrings = LOTRConverterStrings.ExchangeRate

// MARK: - View
struct ExchangeInfo: View {
    var body: some View {
        ZStack {
            Image("parchment")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            ScrollView {
                Text(ExchangeInfoStrings.title)
                    .font(.largeTitle)
                    .padding(.top, 50)
                    .padding(.bottom, 25)
                
                Text(ExchangeInfoStrings.infoDescription)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing], 125)
                
                VStack {
                    ExchangeRate(fromImage: Image("goldpiece"), exchangeInfo: ExchangeRateStrings.goldPieceToGoldPenny, toImage: Image("goldpenny"))
                    ExchangeRate(fromImage: Image("goldpenny"), exchangeInfo: ExchangeRateStrings.goldPennyToSilverPiece, toImage: Image("silverpiece"))
                    ExchangeRate(fromImage: Image("silverpiece"), exchangeInfo: ExchangeRateStrings.silverPieceToSilverPenny, toImage: Image("silverpenny"))
                    ExchangeRate(fromImage: Image("silverpenny"), exchangeInfo: ExchangeRateStrings.silverPennyToCopperPenny, toImage: Image("copperpenny"))
                }
                .padding([.top, .bottom], 25)
                
                Button("Done") {
                    print("TODO: - Implement Done Button")
                }
                .padding()
                .background(Color(.systemBrown).opacity(0.75))
                .font(.title)
                .foregroundColor(.white)
                .cornerRadius(25)
            }
            .padding(.bottom, 25)
        }
        .background(Color(.systemBrown))
    }
}

// MARK: - Previews
struct ExchangeInfo_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeInfo()
    }
}
