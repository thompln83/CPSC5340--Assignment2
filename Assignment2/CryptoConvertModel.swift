//
//  CryptoConvertModel.swift
//  Assignment2
//
//  Created by Lauren Thompson on 10/25/23.
//
//
//  Lauren Thompson CPSC5340 October 2023

import Foundation

struct CryptoConvertModel<SomeType> : Identifiable  {
    let id = UUID()
    var name: String
    var priceInUSD: Double
}

// Crypto
struct Crypto {
    let cryptoName: String
    let priceInUSD: Double
}
