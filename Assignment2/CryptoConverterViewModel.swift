//
//  CryptoViewModel.swift
//  Assignment2
//
//  Created by Lauren Thompson on 10/25/23.
//

// Lauren Thompson CPSC5340 October 2023


//CryptoConvertModel.swift: Contains the model for the Crypto converter.
//
//CryptoConverterViewModel.swift: Contains the ViewModel for the Crypto converter.
//
//CryptoConverterView.swift: Contains the View for the Crypto converter.

//import Foundation
//
//class CurrencyConverterViewModel : ObservableObject   {
//    
//    @Published private(set) var listOfCards = [ConvertModel<CurrencyItemModel>]()
//    
//    func fetchCards()    {
//        self.listOfCards = [
//            ConvertModel(cardContent: CurrencyItemModel(currencyName: "US Dollar", currencyCode: "USD", countryFlag: "🇺🇸", multiplier: 1)),
//            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Chinese Yuan", currencyCode: "CNY", countryFlag: "🇨🇳", multiplier: 6.94)),
//            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Canadian Dollar", currencyCode: "CAD", countryFlag: "🇨🇦", multiplier: 1.36)),
//            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Australian Dollar", currencyCode: "AUD", countryFlag: "🇦🇺", multiplier: 1.49)),
//            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Indian Rupee", currencyCode: "INR", countryFlag: "🇮🇳", multiplier: 82.60)),
//            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Chilean Peso", currencyCode: "CLP", countryFlag: "🇨🇱", multiplier: 832.04))
//        ]
//        
//    }
//    
//    // flips card toggling isFront
//    func flip(card: ConvertModel<CurrencyItemModel>)  {
//         let index = findIndex(card: card)
//        listOfCards[index!].isFront.toggle()
//
//    }
//    
//    // finds respective card index in listOFCards
//    func findIndex(card: ConvertModel<CurrencyItemModel>) -> Int? {
//        for index in 0..<listOfCards.count {
//            if card.id == listOfCards[index].id {
//                return index
//            }
//        }
//        
//        return nil
//    }
//}
//        

/*
class CryptoConverterViewModel: ObservableObject   {
    
    //@Published private(set) var listOfCards = [ConvertModel<CurrencyItemModel>]()
    @Published private(set) var listOfCryptoCards : [CryptoConvertModel<CryptoItemModel>]()= [
        
        func fetchCryptoCards()    {
            self.listOfCryptoCards = [
                CryptoConvertModel(cryptoCardContent: CryptoItemModel(cryptoName: "US Dollar", cryptoCode: "USD",  multiplier: 1)),
            

        
        // Example value per Bitcoin: $35,000 USD
        listOfCryptoCards(name: "Bitcoin", multiplier: 35000),
        
        // Example value per Ethereun: $2,000 USD
        listOfCryptoCards(name: "Ethereum", multiplier: 2000),
        
        // Example value per Tether: $1 USD
        listOfCryptoCards(name: "Tether", multiplier: 1),
       
        // Example value per BNB: $225 USD
        listOfCryptoCards(name: "BNB", multiplier: 225),
        
        // Example value per USD Coin: $1.00 USD
        listOfCryptoCards(name: "USD Coin", multiplier: 1.00),
        
        // Example value per XRP: $0.56 USD
        listOfCryptoCards(name: "XRP", multiplier: 0.56),
 */
        
        
//    ]

   // func convertToUSD(crypto: Crypto, amount: Double) -> Double {
   //     return amount * crypto.multiplier
//    }
//}

    
//    @Published var userInput: String = ""
//    @Published var result: Double = 0.0
//    
//    
//    // Example value per Bitcoin: $35,000 USD
//    let bitcoinMultiplier: Double = 35000
//    
//    func convert() {
//        if let value = Double(userInput) {
//            result = value * bitcoinMultiplier
//        }
//    }
//}
