//
// Assignment2App.swift : Assignment2
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.

// Lauren Thompson CPSC5340 October 2023

import SwiftUI

@main
struct Assignment2App: App {
    var body: some Scene {
        WindowGroup {
            // Converter()
            // * Change to ConversionAppHomeView()
            ConversionAppHomeView()
            
        }
        
    }
}

struct ConversionAppHomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Incorporates Converter for currency
                // Navigation Link
                NavigationLink(destination: Converter()) {
                    Text("World Currency")
                    //styling
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                // Creates CryptoConverterView for crypto
                // Navigation Link
                NavigationLink(destination: CryptoConverterView()) {
                    Text("Crypto Converter")
                    //styling
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                }
            }
            // App Title
            .navigationBarTitle("Conversion App", displayMode: .large)
        }
    }
}

struct ConversionAppHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ConversionAppHomeView()
        }
    }
}


// Git Notes:
// Terminal: go to local directory
// git status
// git add -A
// git status
// git commit -m "Your message here"
// git push

//
// Project Assignment 2: CryptoConversion App Outline
//
//|__ AssignmentApp2.swift
//|      // ConversionAppHomeView() -> Converter ($) & CryptoConverter
//│
//|── ConvertModel.swift
//│  // -> CurrencyItemModel
//|  // -> ConvertModel<SomeType> : Identifiable 
//|
//|__ CryptoConvertModel.swift ?
//|  // -> CryptoItemModel
//|  // -> CryptoConvertModel<SomeType> : Identifiable
//|
//|__ CurrencyItem.swift
//|  // -> ConvertModel<CurrencyItemModel
//|  // -> FrontCurrencyItem(card: card.cardContent)
//|  // -> BackCurrencyItem(card: card.cardContent)
//|  // -> CurrencyItem(card: ConvertModel(cardContent:  
//|  //    CurrencyItemModel
//|
//|
//|__ CryptoCurrencyItem.swift
//|  // -> CryptoConvertModel<CurrencyItemModel
//|  // -> CryptoCurrencyItem(card: CryptoConvertModel(cryptoCardContent:
//|  // -> CryptoItemModel
//|
//|
//|── Converter.swift
//|   // -→  CurrencyConverterViewModel
//|   // ->  CurrencyItem
//|
//|
//|__ CryptoConverter.swift
//|   // -→  CryptoCurrencyConverterViewModel
//|   // ->  CryptoItem
//|
//|
//│── CurrencyConverterViewModel
//|   // -> ConvertModel
//|   // -> ConvertItemModel
//|   // -> ConvertModel<CurrencyItemModel>)
//│
//|__ CryptoConverterViewModel.swift
//|   // -> CryptoConvertModel
//|   // -> CryptoConvertItemModel
//|   // -> CryptoConvertModel<CryptoItemModel>)
//|
//|
//|__
