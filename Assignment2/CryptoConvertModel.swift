//
//  CryptoConvertModel.swift
//  Assignment2
//
//  Created by Lauren Thompson on 10/25/23.
//

// Lauren Thompson CPSC5340 October 2023


//CryptoConvertModel.swift: Contains the model for the Crypto converter.
//
//CryptoConverterViewModel.swift: Contains the ViewModel for the Crypto converter.
//
//CryptoConverter.swift: Contains the View for the Crypto converter.
//SwiftUI 

import Foundation

//Contains the model for the Crypto converter.
struct CryptoConvertModel<SomeType> : Identifiable  {
    let id = UUID()
    var isFront : Bool = true
    let cardContent : SomeType
        
    }

//    // Currency
//    struct CurrencyItemModel {
//        let currencyName : String
//        let currencyCode : String
//        let countryFlag : String
//        let multiplier : Double
//
//    }

    // Crypto
    struct CryptoItemModel {
        let cryptoName : String
        let cryptoCode : String
        let multiplier : Double
        
    }
