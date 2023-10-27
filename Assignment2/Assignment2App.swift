//
// Assignment2App.swift : Assignment2
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.

// Lauren Thompson CPSC5340 October 2023

import SwiftUI

@main
struct Assignment2: App {
    var body: some Scene {
        WindowGroup {
            ConversionAppHomeView()
        }
    }
}

//@main
struct ConversionAppHomeView: View {
    var body: some View {
        
        NavigationView {
            
            List {
                // Currency Converter()
                NavigationLink("World Currency Exchange", destination: Converter())
                
                // Crypto CryptoConverter()
                NavigationLink("Crypto Exchange Details", destination: CryptoConverter())
            }
            
            
            // App Title
            .navigationBarTitle("Conversion App", displayMode: .large)
            
        }
    }
}
            
// Preview
struct ConversionAppHomeView_Previews: PreviewProvider {
    static var previews: some View {
        // NavigationView {
        ConversionAppHomeView()
    }
}



//          Git Notes:      //
// Terminal: go to local directory
// git status
// git add -A
// git status
// git commit -m "Your message here"
// git push


//       Project Assignment 2: CryptoConversion App Outline     //

//|__ AssignmentApp2.swift
//|      // ConversionAppHomeView() -> Converter ($) & CryptoConverter
//|      // NavigationView & Navigation Link
//│
//|── ConvertModel.swift
//│  // -> CurrencyItemModel
//|  // -> ConvertModel<SomeType> : Identifiable 
//|
//|__ CryptoConvertModel.swift
//|  // -> ConvertModel<CurrencyItemModel>
//|  // -> CryptoItemModel
//|  // -> CryptoConvertModel<SomeType> : Identifiable
//|  // -> Crypto
//|
//|__ CurrencyItem.swift
//|  // -> ConvertModel<CurrencyItemModel
//|  // -> FrontCurrencyItem(card: card.cardContent)
//|  // -> BackCurrencyItem(card: card.cardContent)
//|  // -> CurrencyItem(card: ConvertModel(cardContent:  
//|  // -> CurrencyItemModel
//|  // -> FrontCurrencyItem
//|
//|__ CryptoItem.swift
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
