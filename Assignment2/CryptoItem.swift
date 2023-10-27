//
// CryptoItem.swift
// Assignment2
//
// Created by Lauren Thompson on 10/25/23.
//
//
// Lauren Thompson CPSC5340 October 2023

import SwiftUI

struct CryptoItem: View {
    // StateObject holding view model for currency conversion
    @StateObject var viewModel: CryptoConverterViewModel = CryptoConverterViewModel()
    
    // User-entered amount for Bitcoin conversion
    @State private var amount: String = ""
    
    // State variable to control visibility of the keypad
    @State private var showKeypad: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Input field and label for Bitcoin amount
                HStack {
                    // Label for input
                    Text("Bitcoin: ")
                    
                    // Input field
                    TextField("", text: $amount)
                        .keyboardType(.numberPad)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                    
                        // Toggle keypad visibility
                        .onTapGesture {
                            self.showKeypad.toggle()
                        }
                }
                
                // List displaying results
                List(viewModel.cryptos.indices, id: \.self) { index in
                    HStack {
                        
                        // List label
                        Text(viewModel.cryptos[index].cryptoLabel)
                        Spacer()
                        
                        // Results displayed
                        // Default 1
                        if let amountDouble = Double(amount) {
                            Text(String(format: "%.1f", viewModel.convertToUSD(cryptoName: viewModel.cryptos[index], amount: amountDouble)))
                            
                        // Invalid Entry
                        } else {
                            Text("Invalid Entry")
                        }
                    }
                    
                    .frame(maxWidth: .infinity)
                }
            }
            
            .padding()
            
            // Screen Title
            .navigationBarTitle("Bitcoin Conversion", displayMode: .inline)
            
            // hide Keyboard
            .onTapBackgroundToDismissKeyboard()
            
            // show Keyboard
            if showKeypad {
                NumberPadView(value: $amount, showKeypad: $showKeypad)
                    .transition(.move(edge: .bottom))
            }
        }
    }
}

// NumberPadView
struct NumberPadView: View {

    @Binding var value: String

    // showKeypad boolean
    @Binding var showKeypad: Bool

    // 3 column
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)

    var body: some View {

        VStack {
            LazyVGrid(columns: columns) {

                // button action
                ForEach(1...9, id: \.self) { num in
                    Button(action: {

                        value += "\(num)"

                    }) {

                        // number display
                        Text("\(num)")
                            .font(.largeTitle)
                            .padding(20)
                            .background(Color.white)
                    }
                }

                Button(action: {
                    showKeypad = false
                }) {

                    // return image
                    Image(systemName: "return")
                        .font(.largeTitle)
                        .padding(20)
                        .background(Color.white)
                }

                // button value
                Button(action: {
                    value += "0"

                }) {

                    // key format
                    Text("0")
                        .font(.largeTitle)
                        .padding(20)
                        .background(Color.white)
                }

                // delete left button
                // if != empty remove last value
                Button(action: {
                    if !value.isEmpty {
                        value.removeLast()
                    }

                }) {

                    // key format
                    Image(systemName: "delete.left")
                        .font(.largeTitle)
                        .padding(20)
                        .background(Color.white)

                }
            }
        }

        // Format
        .background(Color.gray.opacity(0.1))

        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)

        .onTapGesture {
            showKeypad = false

        }
    }
}

// hideKeyboard
// resign the first responder status; dismisses the keyboard
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

// onTap dismisses keyboard
// with tap -> resign the first responder status; dismisses the keyboard
struct TapBackgroundToDismissKeyboard: ViewModifier {
    func body(content: Content) -> some View {
        content
            .onTapGesture {
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
    }
}

// modified views
// easy if needs to be added in additional code location
extension View {
    func onTapBackgroundToDismissKeyboard() -> some View {
        self.modifier(TapBackgroundToDismissKeyboard())
    }
}

// Preview
struct CryptoItem_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CryptoItem()
        }
    }
}
