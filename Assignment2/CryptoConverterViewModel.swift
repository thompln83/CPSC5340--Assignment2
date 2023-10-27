//
//  CryptoConverterViewModel.swift
//  Assignment2
//
//  Created by Lauren Thompson on 10/25/23.
//

// Lauren Thompson CPSC5340 October 2023

import Foundation

class CryptoConverterViewModel: ObservableObject {
    
    struct Crypto {
        let cryptoName: String
        let cryptoLabel: String // The display name or label for the cryptocurrency
        let priceInUSD: Double
    }
    
    @Published var cryptos: [Crypto] = [
        Crypto(cryptoName: "Bitcoin", cryptoLabel: "US Dollar", priceInUSD: 35000),
        Crypto(cryptoName: "Ethereum", cryptoLabel: "Ethereum", priceInUSD: 1500),
        Crypto(cryptoName: "Tether", cryptoLabel: "Tether", priceInUSD: 1),
        Crypto(cryptoName: "BNB", cryptoLabel: "BNB", priceInUSD: 225),
        Crypto(cryptoName: "USD Coin", cryptoLabel: "USD Coin", priceInUSD: 1.00),
        Crypto(cryptoName: "XRP", cryptoLabel: "XRP", priceInUSD: 0.56),
    ]
    
    // function to take crypto amount & convert to $ USD
    func convertToUSD(cryptoName: Crypto, amount: Double) -> Double {
        return amount * cryptoName.priceInUSD
    }
}

//import Foundation
//
//class CryptoConverterViewModel: ObservableObject {
//    @Published var cryptos: [Crypto] = [
//        // Example $USD value per Bitcoin: $3500 USD
//        Crypto(cryptoName: "Bitcoin", priceInUSD: 35000),
//        
//        // Example $USD value per Ethereum: $1500 USD
//        Crypto(cryptoName: "Ethereum", priceInUSD: 1500),
//        
//        // Example $USD value per Tether: $1 USD
//        Crypto(cryptoName: "Tether", priceInUSD: 1),
//        
//        // Example $USD value per BNB: $225 USD
//        Crypto(cryptoName: "BNB", priceInUSD: 225),
//        
//        // Example $USD value per USD Coin: $1.00 USD
//        Crypto(cryptoName: "USD Coin",priceInUSD: 1.00),
//        
//        // Example $USD value per XRP: $0.56 USD
//        Crypto(cryptoName: "XRP", priceInUSD: 0.56),
//    ]
//    
//    // function to take crypto amount & convert to $ USD
//    func convertToUSD(cryptoName: Crypto, amount: Double) -> Double {
//        return amount * cryptoName.priceInUSD
//    }
//}

