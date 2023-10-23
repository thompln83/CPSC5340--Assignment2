//
//  ConvertModel.swift
//  Assignment2
//
//  Created by Lauren Thompson on 10/23/23.
//

// Lauren Thompson CPSC5340 October 2023

import Foundation

struct ConvertModel {
    let isFront : Bool = true
    let cardContent : CurrencyItemModel
    
}


struct CurrencyItemModel {
    let currencyName : String
    let currencyCode : String
    let countryFlag : String
    let multiplier : Double

}
