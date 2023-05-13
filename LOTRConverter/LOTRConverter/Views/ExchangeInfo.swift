//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/13/23.
//

import SwiftUI

// MARK: - View
struct ExchangeInfo: View {
    var body: some View {
        ZStack {
            Image("parchment")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            ScrollView {
                Text(Self.title)
                    .font(.largeTitle)
                    .padding(.top, 50)
                    .padding(.bottom, 25)
                
                Text(Self.infoDescription)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing], 125)
                
                VStack {
                    ExchangeInfoRow(fromImage: Image("goldpiece"), exchangeInfo: Self.goldPieceToGoldPenny, toImage: Image("goldpenny"))
                    ExchangeInfoRow(fromImage: Image("goldpenny"), exchangeInfo: Self.goldPennyToSilverPiece, toImage: Image("silverpiece"))
                    ExchangeInfoRow(fromImage: Image("silverpiece"), exchangeInfo: Self.silverPieceToSilverPenny, toImage: Image("silverpenny"))
                    ExchangeInfoRow(fromImage: Image("silverpenny"), exchangeInfo: Self.silverPennyToCopperPenny, toImage: Image("copperpenny"))
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
    
    // MARK: - Sub View
    private struct ExchangeInfoRow: View {
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
}

// MARK: - Strings
extension ExchangeInfo {
    static let title = "Exchange Rates"
    static let infoDescription = "Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world, except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:"
    static let goldPieceToGoldPenny = "1 Gold Piece = 4 Gold Pennies"
    static let goldPennyToSilverPiece = "1 Gold Penny = 4 Silver Pieces"
    static let silverPieceToSilverPenny = "1 Silver Piece = 4 Silver Pennies"
    static let silverPennyToCopperPenny = "1 Silver Penny = 100 Copper Pennies"
}

// MARK: - Previews
struct ExchangeInfo_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeInfo()
    }
}
