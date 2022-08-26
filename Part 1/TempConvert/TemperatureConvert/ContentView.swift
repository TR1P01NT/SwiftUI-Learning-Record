//
//  ContentView.swift
//  TemperatureConvert
//
//  Created by Kev Lee on 18/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var temperature = 33.2
    @State private var tempInput = "Celcius"
    @State private var tempOutput = "Kelvin"
    @State private var temperatureFinal = 22
    let tempSettings = ["Celcius", "Kelvin", "Fahrenheit"]

    var tempConvert: Double {
        let temp = temperature

        switch(tempInput) {
        case "Celcius":
            switch(tempOutput) {
            case "Celcius":
                return temp
            case "Kelvin":
                return temp + 273.15
            case "Fahrenheit":
                return (temp * 9 / 5) + 32
            default:
                break
            }
        case "Kelvin":
            switch(tempOutput) {
            case "Celcius":
                return temp - 273.15
            case "Kelvin":
                return temp
            case "Fahrenheit":
                return ((temp - 273.15) * 9 / 5) + 32
            default:
                break
            }
        case "Fahrenheit":
            switch(tempOutput) {
            case "Celcius":
                return (temp - 32) * 5 / 9
            case "Kelvin":
                return ((temp - 32) * 5 / 9) + 273.15
            case "Fahrenheit":
                return temp
            default:
                break
            }
        default:
            break
        }

        return temp
    }

    var tempResult: String {
        tempConvert.formatted()
    }

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Input temperature", value: $temperature, format: .number)

                    Picker("Input temperature type", selection: $tempInput) {
                        ForEach(tempSettings, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Temperature Input")
                }

                Section {
                    Text(tempResult)

                    Picker("Output temperature type", selection: $tempOutput) {
                        ForEach(tempSettings, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("Temperature Output")
                }
            }
            .navigationTitle("Temp Conversion")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
