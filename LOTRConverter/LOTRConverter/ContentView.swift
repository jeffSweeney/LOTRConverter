//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Image("prancingpony")
                    .resizable()
                    .scaledToFit() // Allows us to omit width below
                    .frame(height: 200)
                
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                HStack {
                    VStack {
                        HStack {
                            Image("silverpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .padding(.bottom, -2.5)
                        
                        TextField("Amount", text: $leftAmount)
                            .padding(5)
                            .background(Color(.systemGray6))
                            .cornerRadius(7)
                    }
                    .padding(.leading, 10)
                    
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    VStack {
                        HStack {
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundColor(.white)
                            
                            Image("goldpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -2.5)
                        
                        TextField("Amount", text: $rightAmount)
                            .padding(5)
                            .background(Color(.systemGray6))
                            .cornerRadius(7)
                            .multilineTextAlignment(.trailing)
                    }
                    .padding(.trailing, 10)
                }
                .padding()
                .background(Color.black.opacity(0.5))
                .cornerRadius(75)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        print("info tapped") // TODO: Set action
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 33)
                            .foregroundColor(.white)
                    }
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
