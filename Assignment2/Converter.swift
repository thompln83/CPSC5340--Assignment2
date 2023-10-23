//
// ContentView.swift : Assignment2
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.

// Lauren Thompson CPSC5340 October 2023

import SwiftUI

struct Converter: View {
    
    @ObservedObject var viewModel = CurrencyConverterViewModel()
    
    var body: some View {
        ScrollView   {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                
                ForEach(viewModel.listOfCards) { card in
                    CurrencyItem(card: card)
                        .onTapGesture {
                            viewModel.flip(card: card)
                        }
                }
            }
        }
    
        .onAppear   {
            viewModel.fetchCards()
        }
    }
}
            
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Converter()
    }
}

