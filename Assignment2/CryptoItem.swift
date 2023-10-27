//
//  CryptoItem.swift
//  Assignment2
//
//  Created by Lauren Thompson on 10/25/23.
//

import SwiftUI

struct CryptoItem: View {
    @StateObject var viewModel = CryptoConverterViewModel()
    @State private var amount: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter Bitcoin amount", text: $amount)
                .keyboardType(.numberPad)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .onTapGesture {
                    self.hideKeyboard()
                }
                
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
        .onTapBackgroundToDismissKeyboard()
    }
}

struct CryptoItem_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CryptoItem()
        }
    }
}

// Helper function and view modifier to dismiss keyboard
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct TapBackgroundToDismissKeyboard: ViewModifier {
    func body(content: Content) -> some View {
        content
            .onTapGesture {
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
    }
}

extension View {
    func onTapBackgroundToDismissKeyboard() -> some View {
        self.modifier(TapBackgroundToDismissKeyboard())
    }
}
