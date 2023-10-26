//
// Assignment2App.swift : Assignment2
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.

// Lauren Thompson CPSC5340 October 2023

import SwiftUI

@main
struct Assignment2App: App {
    var body: some Scene {
        WindowGroup {
            // Converter()
            // * Change to Homeview
            //ConversionAppHomeView()
            ConversionAppHomeView()
            
        }
        
    }
}

struct ConversionAppHomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Incorporates Converter for currency
                // Navigation Link
                NavigationLink(destination: Converter()) {
                    Text("World Currency")
                }
                
                // Creates CryptoConverterView for crypto
                // Navigation Link
                NavigationLink(destination: CryptoConverter()) {
                    Text("Crypto Converter")
                }
            }
            .navigationBarTitle("Conversion App", displayMode: .large)
        }
    }
}



// Git Notes:
// Terminal: go to local directory
// git status
// git add -A
// git status
// git commit -m "Your message here"
// git push


// Project Outline:
//CryptoConversionApp/
//│
//|__ AssignmentApp2.swift
      // ConversionAppHomeView() -> Converter ($) & CryptoConverter
//│
//├── Models/
//│   │
//│   ├── ConvertModel.swift
//│   |  // -> CurrencyItemModel
//|   |  // -> CryptoItemModel
//|   |__ CryptoConvertModel.swift
//|   |  //-> CryptoItemModel ?
//|   |__
//|  
//|
//├── ViewModels/
//│   │
//│   ├── CurrencyConverterViewModel
//|   |     // -> ConvertModel
//|   |     // -> ConvertItemModel
//|   |     // -> ConvertModel<CurrencyItemModel>)
//│   └─  CryptoConverterViewModel.swift
//|   |
//|   |_
//│
//|
//├── Views/
//│   │
//│   ├── Converter.swift
//|   |        // →  CurrencyConverterViewModel
//|   |        // -> CurrencyItem
//|   |__ CurrencyItem.swift
//|   |
//|   |__ CryptoConverter.swift
//|   |
//|   |__ Converter.swift
//│   |_
//|
//|
//│
//├── Services/
//│   │
//│   ├── APIManager.swift
//│   └── DatabaseManager.swift  // If needed for local storage
//│
//├── Utils/
//│   │
//│   ├── →  Converter.swift
//│   └── →  CryptoConverter.swift
//│__
//

