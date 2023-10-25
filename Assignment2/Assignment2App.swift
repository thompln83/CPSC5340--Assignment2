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
            Converter()
            // * Change to Homeview
            //HomeView()

        }
    }
}

// Terminal: go to local directory
// git status
// git add -A
// git status
// git commit -m "Your message here"
// git push


//CryptoConversionApp/
//│
//|__ AssignmentApp2.swift
//│
//├── Models/
//│   │
//│   ├── ConvertModel.swift       →  CurrencyConvertModel.swift
//│   └── none                     →  CryptoConvertModel.swift
//│
//├── ViewModels/
//│   │
//│   ├── CurrencyConverterViewModel.swift  →  CurrencyConverterViewModel.swift
//│   └── none                              →  CryptoViewModel.swift
//│
//├── Views/
//│   │
//│   ├── none                      →  CryptoConverterView.swift
//│   └── ConverterView.swift       →  CurrencyConverterView.swift
//│
//├── Services/
//│   │
//│   ├── APIManager.swift
//│   └── DatabaseManager.swift  // If needed for local storage
//│
//├── Utils/
//│   │
//│   ├── currencyItem.swift       →  currencyItem.swift
//│   └── none                     →  cryptoItem.swift
//│
//└── AppDelegate.swift
//    Info.plist
//    SceneDelegate.swift
//
