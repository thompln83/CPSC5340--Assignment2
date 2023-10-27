// CryptoItem.swift
// Assignment2
//
// Created by Lauren Thompson on 10/25/23.
//
// Lauren Thompson CPSC5340 October 2023
//

import SwiftUI

struct CryptoItem: View {
    @StateObject var viewModel = CryptoConverterViewModel()
    @State private var amount: String = ""
    @State private var showKeypad: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Label and Textfield combined for "Bitcoin: " followed by user input
                HStack {
                    Text("Bitcoin: ")
                    TextField("", text: $amount)
                        .keyboardType(.numberPad)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                        .onTapGesture {
                            self.showKeypad.toggle()
                        }
                }
                
                // Modified List to show requested labels
                List(viewModel.cryptos.indices, id: \.self) { index in
                    HStack {
                        Text(viewModel.cryptos[index].cryptoLabel) // Using cryptoLabel instead of cryptoName for custom display
                        Spacer()
                        Text(String(format: "%.2f", viewModel.convertToUSD(cryptoName: viewModel.cryptos[index], amount: Double(amount) ?? 1)))
                    }
                }
            }
            .padding()
            .navigationBarTitle("Conversion App", displayMode: .inline)
            .onTapBackgroundToDismissKeyboard()
            
            if showKeypad {
                NumberPadView(value: $amount, showKeypad: $showKeypad)
                    .transition(.move(edge: .bottom))
            }
        }
    }
}

struct NumberPadView: View {
    @Binding var value: String
    @Binding var showKeypad: Bool
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    var body: some View {
        VStack {
            LazyVGrid(columns: columns) {
                ForEach(1...9, id: \.self) { num in
                    Button(action: {
                        value += "\(num)"
                    }) {
                        Text("\(num)")
                            .font(.largeTitle)
                            .padding(20)
                            .background(Color.white)
                    }
                }
                Button(action: {
                    showKeypad = false
                }) {
                    Image(systemName: "return")
                        .font(.largeTitle)
                        .padding(20)
                        .background(Color.white)
                }
                Button(action: {
                    value += "0"
                }) {
                    Text("0")
                        .font(.largeTitle)
                        .padding(20)
                        .background(Color.white)
                }
                Button(action: {
                    if !value.isEmpty {
                        value.removeLast()
                    }
                }) {
                    Image(systemName: "delete.left")
                        .font(.largeTitle)
                        .padding(20)
                        .background(Color.white)
                }
            }
        }
        .background(Color.gray.opacity(0.2))
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .onTapGesture {
            showKeypad = false
        }
    }
}

// Helper function and view modifier to dismiss keyboard
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct TapBackgroundToDismissKeyboard: ViewModifier {
    func body(content: Content) -> some View {
        content
            .onTapGesture {
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
    }
}

extension View {
    func onTapBackgroundToDismissKeyboard() -> some View {
        self.modifier(TapBackgroundToDismissKeyboard())
    }
}

struct CryptoItem_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CryptoItem()
        }
    }
}





////
//// CryptoItem.swift
//// Assignment2
////
//// Created by Lauren Thompson on 10/25/23.
////
//// Lauren Thompson CPSC5340 October 2023
////
////
//
//
//import SwiftUI
//
//struct CryptoItem: View {
//    @StateObject var viewModel = CryptoConverterViewModel()
//    @State private var amount: String = ""
//    @State private var showKeypad: Bool = false
//    
//    var body: some View {
//        ZStack {
//            VStack(spacing: 20) {
//                TextField("Enter Bitcoin amount", text: $amount)
//                    .keyboardType(.numberPad)
//                    .padding()
//                    .background(Color.gray.opacity(0.2))
//                    .cornerRadius(8)
//                    .onTapGesture {
//                        self.showKeypad.toggle()
//                    }
//                
//                List(viewModel.cryptos.indices, id: \.self) { index in
//                    HStack {
//                        Text(viewModel.cryptos[index].cryptoName)
//                        Spacer()
//                        Text(String(format: "%.2f", viewModel.convertToUSD(cryptoName: viewModel.cryptos[index], amount: Double(amount) ?? 1)))
//                    }
//                }
//            }
//            .padding()
//            .navigationBarTitle("Conversion App", displayMode: .inline)
//            .onTapBackgroundToDismissKeyboard()
//            
//            if showKeypad {
//                NumberPadView(value: $amount, showKeypad: $showKeypad)
//                    .transition(.move(edge: .bottom))
//            }
//        }
//    }
//}
//
//struct NumberPadView: View {
//    @Binding var value: String
//    @Binding var showKeypad: Bool
//    
//    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
//    
//    var body: some View {
//        VStack {
//            LazyVGrid(columns: columns) {
//                ForEach(1...9, id: \.self) { num in
//                    Button(action: {
//                        value += "\(num)"
//                    }) {
//                        Text("\(num)")
//                            .font(.largeTitle)
//                            .padding(20)
//                            .background(Color.white)
//                    }
//                }
//                Button(action: {
//                    showKeypad = false
//                }) {
//                    Image(systemName: "return")
//                        .font(.largeTitle)
//                        .padding(20)
//                        .background(Color.white)
//                }
//                Button(action: {
//                    value += "0"
//                }) {
//                    Text("0")
//                        .font(.largeTitle)
//                        .padding(20)
//                        .background(Color.white)
//                }
//                Button(action: {
//                    if !value.isEmpty {
//                        value.removeLast()
//                    }
//                }) {
//                    Image(systemName: "delete.left")
//                        .font(.largeTitle)
//                        .padding(20)
//                        .background(Color.white)
//                }
//            }
//        }
//        .background(Color.gray.opacity(0.2))
//        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
//        .onTapGesture {
//            showKeypad = false
//        }
//    }
//}
//
//// Helper function and view modifier to dismiss keyboard
//extension View {
//    func hideKeyboard() {
//        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//    }
//}
//
//struct TapBackgroundToDismissKeyboard: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .onTapGesture {
//                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//            }
//    }
//}
//
//extension View {
//    func onTapBackgroundToDismissKeyboard() -> some View {
//        self.modifier(TapBackgroundToDismissKeyboard())
//    }
//}
//
//struct CryptoItem_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            CryptoItem()
//        }
//    }
//}


////
////  CryptoItem.swift
////  Assignment2
////
////  Created by Lauren Thompson on 10/25/23.
////
//
//import SwiftUI
//
//struct CryptoItem: View {
//    @StateObject var viewModel = CryptoConverterViewModel()
//    @State private var amount: String = ""
//    
//    var body: some View {
//        VStack(spacing: 20) {
//            TextField("Enter Bitcoin amount", text: $amount)
//                .keyboardType(.numberPad)
//                .padding()
//                .background(Color.gray.opacity(0.2))
//                .cornerRadius(8)
//                .onTapGesture {
//                    self.hideKeyboard()
//                }
//                
//            List(viewModel.cryptos.indices, id: \.self) { index in
//                HStack {
//                    Text(viewModel.cryptos[index].cryptoName)
//                    Spacer()
//                    Text(String(format: "%.2f", viewModel.convertToUSD(cryptoName: viewModel.cryptos[index], amount: Double(amount) ?? 1)))
//                }
//            }
//        }
//        .padding()
//        .navigationBarTitle("Conversion App", displayMode: .inline)
//        .onTapBackgroundToDismissKeyboard()
//    }
//}
//
//struct CryptoItem_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            CryptoItem()
//        }
//    }
//}
//
//// Helper function and view modifier to dismiss keyboard
//extension View {
//    func hideKeyboard() {
//        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//    }
//}
//
//struct TapBackgroundToDismissKeyboard: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .onTapGesture {
//                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//            }
//    }
//}
//
//extension View {
//    func onTapBackgroundToDismissKeyboard() -> some View {
//        self.modifier(TapBackgroundToDismissKeyboard())
//    }
//}
//
//
//
//
//
//
//
//////
//////  CryptoItem.swift
//////  Assignment2
//////
//////  Created by Lauren Thompson on 10/25/23.
//////
////
////import SwiftUI
////
////struct CryptoItem: View {
////    @StateObject var viewModel = CryptoConverterViewModel()
////    @State private var amount: String = ""
////    
////    var body: some View {
////        VStack(spacing: 20) {
////            TextField("Enter Bitcoin amount", text: $amount)
////                .keyboardType(.numberPad)
////                .padding()
////                .background(Color.gray.opacity(0.2))
////                .cornerRadius(8)
////                .onTapGesture {
////                    self.hideKeyboard()
////                }
////                
////            List(viewModel.cryptos.indices, id: \.self) { index in
////                HStack {
////                    Text(viewModel.cryptos[index].cryptoName)
////                    Spacer()
////                    Text(String(format: "%.2f", viewModel.convertToUSD(cryptoName: viewModel.cryptos[index], amount: Double(amount) ?? 1)))
////                }
////            }
////        }
////        .padding()
////        .navigationBarTitle("Conversion App", displayMode: .inline)
////        .onTapBackgroundToDismissKeyboard()
////    }
////}
////
////struct CryptoItem_Previews: PreviewProvider {
////    static var previews: some View {
////        NavigationView {
////            CryptoItem()
////        }
////    }
////}
////
////// Helper function and view modifier to dismiss keyboard
////extension View {
////    func hideKeyboard() {
////        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
////    }
////}
////
////struct TapBackgroundToDismissKeyboard: ViewModifier {
////    func body(content: Content) -> some View {
////        content
////            .onTapGesture {
////                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
////            }
////    }
////}
////
////extension View {
////    func onTapBackgroundToDismissKeyboard() -> some View {
////        self.modifier(TapBackgroundToDismissKeyboard())
////    }
////}
