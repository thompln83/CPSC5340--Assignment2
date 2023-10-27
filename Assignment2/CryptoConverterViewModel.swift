//
//  CryptoViewModel.swift
//  Assignment2
//
//  Created by Lauren Thompson on 10/25/23.
//

// Lauren Thompson CPSC5340 October 2023

//
//  CryptoViewModel.swift
//  Assignment2
//
//  Created by Lauren Thompson on 10/25/23.
//

// Lauren Thompson CPSC5340 October 2023



import Foundation

// CryptoItem
class CryptoConverterViewModel: ObservableObject {
    @Published var cryptos: [Crypto] = [
        // Example value per Bitcoin: $3500 USD
        Crypto(cryptoName: "Bitcoin", priceInUSD: 35000),
        
        // Example value per Ethereum: $1500 USD
        Crypto(cryptoName: "Ethereum", priceInUSD: 1500),
        
        // Example value per Tether: $1 USD
        Crypto(cryptoName: "Tether", priceInUSD: 1),
        
        // Example value per BNB: $225 USD
        Crypto(cryptoName: "BNB", priceInUSD: 225),
        
        // Example value per USD Coin: $1.00 USD
        Crypto(cryptoName: "USD Coin",priceInUSD: 1.00),
        
        // Example value per XRP: $0.56 USD
        Crypto(cryptoName: "XRP", priceInUSD: 0.56),
        
    ]
    
    // function to take crypto amount & convert to $ USD
    func convertToUSD(cryptoName: Crypto, amount: Double) -> Double {
        return amount * cryptoName.priceInUSD
    }
}
    
    
//struct CryptoConverterViewModel_Previews: PreviewProvider {
//    static var previews: some View {
        
//        CryptoConverterViewModel()
//    }
// }
