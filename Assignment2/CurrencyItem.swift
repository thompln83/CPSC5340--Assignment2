//
//  CurrencyItem.swift
//  Assignment2
//
//  Created by Lauren Thompson on 10/22/23.
//

import SwiftUI

struct CurrencyItem: View {
    
    var card : ConvertModel<CurrencyItemModel>
    
    // view based on isFront or isBack
    var body: some View {
        if card.isFront  {
            FrontCurrencyItem(card: card.cardContent)
        } else {
            BackCurrencyItem(card: card.cardContent)
            
           }
        }
    }

// Preview
struct CurrencyItem_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyItem(card: ConvertModel(cardContent: CurrencyItemModel(currencyName: "", currencyCode: "", countryFlag: "", multiplier: 1)))
    }
}

// Currency card Front view: countryFlag, currencyCode
struct FrontCurrencyItem: View {
    
    var card: CurrencyItemModel
    
    var body: some View {
        VStack {
            HStack {
                Text(card.countryFlag)
                Spacer()
            }
            HStack {
                Spacer()
                Text(card.currencyCode)
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
    }
}

// Currency card Back view: currencyName, multiplier
struct BackCurrencyItem: View {
    
    var card: CurrencyItemModel

    
    var body: some View {
        VStack {
            HStack {
                Text(card.currencyName)
                Spacer()
            }
            HStack {
                Spacer()
                Text(String(card.multiplier))
            }
        }
        .frame(width: 130, height: 130)
        .padding()
        .background(.blue)
    }
}


