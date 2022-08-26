//
//  ContentView.swift
//  WeSplit
//
//  Created by Kev Lee on 15/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
//    let tipPercentages = [10, 15, 20, 25, 0]

    @FocusState private var isAmountFocused: Bool

    private let currencyFormat: NumberFormatter

    init() {
        currencyFormat = NumberFormatter()
        currencyFormat.numberStyle = .currency
        currencyFormat.currencyCode = Locale.current.currencyCode ?? "USD"
        currencyFormat.maximumFractionDigits = 2
    }

    var currencyTextFormat: FloatingPointFormatStyle<Double>.Currency {
        let currencyCode = Locale.current.currencyCode ?? "USD"
        return FloatingPointFormatStyle<Double>.Currency(code: currencyCode)
    }

    var totalPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)

        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        return amountPerPerson
    }

    var totalValue: Double {
        let tipSelection = Double(tipPercentage)

        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        return grandTotal
    }

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, formatter: currencyFormat)
                        .keyboardType(.decimalPad)
                        .focused($isAmountFocused)

                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }

                Section {
                    Picker("Tip Percentage", selection: $tipPercentage) {
                        ForEach(0..<101) {
                            Text($0, format: .percent)
                        }
                    }
                } header: {
                    Text("How much tip do you want to leave?")
                }

                Section {
                    Text(totalValue, format: currencyTextFormat)

                } header: {
                    Text("Total amount")
                        .foregroundColor(tipPercentage == 0 ? .red : .gray)
                }

                Section {
                    Text(totalPerson, format: currencyTextFormat)
                } header: {
                    Text("Amount per person")
                }
            }
            .navigationTitle("WeSplit")
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") {
                    isAmountFocused = false
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
