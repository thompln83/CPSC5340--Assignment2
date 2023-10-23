//
//  ConverterViewModel.swift
//  Assignment2
//
//  Created by Lauren Thompson on 10/23/23.
//

// Lauren Thompson CPSC5340 October 2023


import Foundation

class ConverterViewModel    {
    
    private var listOfCards = [ConvertModel]()
    
    func fetchCards()    {
        self.listOfCards = [
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "US Dollar", currencyCode: "USD", countryFlag: "🇺🇸", multiplier: 1)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Chinese Yuan", currencyCode: "CNY", countryFlag: "🇨🇳", multiplier: 6.94)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Canadian Dollar", currencyCode: "CAD", countryFlag: "🇨🇦", multiplier: 1.36)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Australian Dollar", currencyCode: "AUD", countryFlag: "🇦🇺", multiplier: 1.49)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Indian Rupee", currencyCode: "INR", countryFlag: "🇮🇳", multiplier: 82.60)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Chilean Peso", currencyCode: "CLP", countryFlag: "🇨🇱", multiplier: 832.04))
        ]
    
    }
    
}
