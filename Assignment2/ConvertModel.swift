//
//  ConvertModel.swift
//  Assignment2
//
//  Created by Lauren Thompson on 10/23/23.
//

// Lauren Thompson CPSC5340 October 2023

import Foundation

struct ConvertModel<SomeType> : Identifiable  {
    let id = UUID()
    var isFront : Bool = true
    let cardContent : SomeType
    
}

// Currency
struct CurrencyItemModel {
    let currencyName : String
    let currencyCode : String
    let countryFlag : String
    let multiplier : Double

}

// Crypto
struct CryptoItemModel {
    let cryptoName : String
    let cryptoCode : String
    let multiplier : Double
    
}
