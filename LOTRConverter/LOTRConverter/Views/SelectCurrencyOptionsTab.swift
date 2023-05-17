//
//  SelectCurrencyOptionsTab.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/15/23.
//

import SwiftUI

fileprivate let colorTheme = Color(.systemBrown)

struct SelectCurrencyOptionsTab: View {
    let currencyImage: Image
    let currencyName: String
    
    var body: some View {
       ZStack(alignment: .bottom) {
            Rectangle()
                .foregroundColor(colorTheme)
                .cornerRadius(22)
                            
            currencyImage
                .resizable()
                .scaledToFit()
                .padding(.all, 5)
            
           Text(currencyName)
               .background(colorTheme.opacity(0.75))
               .font(.caption2)
               .padding(.bottom, 5)
        }
        .frame(width: 100, height: 100)
    }
}

struct SelectCurrencyOptionsTab_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SelectCurrencyOptionsTab(currencyImage: Image("copperpenny"), currencyName: "Copper Penny")
                .previewLayout(.sizeThatFits)
            
            SelectCurrencyOptionsTab(currencyImage: Image("goldpiece"), currencyName: "Gold Piece")
                .previewLayout(.sizeThatFits)
        }
    }
}
