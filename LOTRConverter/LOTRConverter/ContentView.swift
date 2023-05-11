//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Jeffrey Sweeney on 5/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
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
                        
                        Text("Text Field") // TODO: Update to a user text field
                    }
                    
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
                        
                        Text("Text Field") // TODO: Update to a user text field
                    }
                }
                
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
