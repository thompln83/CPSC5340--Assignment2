//
//  CryptoItem.swift
//  Assignment2
//
//  Created by Lauren Thompson on 10/25/23.
//

import SwiftUI

struct CryptoItem: View {
        @StateObject var viewModel = CryptoConverterViewModel()
    
        @State private var amount: String = " " // default amount for the TextField
        
    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter amount", text: $amount)
                .keyboardType(.decimalPad)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            
            List(viewModel.cryptos.indices, id: \.self) { index in
                HStack {
                    Text(viewModel.cryptos[index].cryptoName)
                    Spacer()
                    Text(String(format: "%.2f", viewModel.convertToUSD(cryptoName: viewModel.cryptos[index], amount: Double(amount) ?? 1)))
                }
            }
        }
        .padding()
        .navigationBarTitle("Conversion App", displayMode: .inline)
    }
}

struct ConversionScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CryptoItem()
        }
    }
}
