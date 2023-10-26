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

struct CryptoConvertModel<SomeType> : Identifiable  {
    let id = UUID()
    var name: String
    var priceInUSD: Double
}


struct Crypto {
    let cryptoName: String
    let priceInUSD: Double
}
