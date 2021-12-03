//
//  ContentView.swift
//  TemperatureConverter
//
//  Created by Berk Bozkurt on 2021-12-02.
//

import SwiftUI

struct ContentView: View {
    @State var temperature: Double = 15.00
    @State var feedback = ""
    
    
    
    var temperatureInFahrenheit: Double {
        return (temperature * 1.8) + 32
    }
    
    
    
    var body: some View {
       
        VStack (alignment: .leading, spacing: 20) {
        
        Text("Celsuis")
                .bold()
        
 // Input - Select current temperature
        Slider(value: $temperature,
               in: -50.0...50.0,
               step: 1.0,
               label: {
                    Text("Temperature")
        },
               minimumValueLabel: {
                    Text("-50")
        },
               maximumValueLabel: {
                    Text("50")
        })
        
        // Output - show current temperature
            HStack {
                    Spacer()
                    Text("\( String(format: "%.0f", temperature))")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
            
    
            Text("Fahrenheit")
                    .bold()
            // Output - covert celsius to fahrenheit
            
            HStack {
                    Spacer()
            Text("\( String(format: "%.0f", temperatureInFahrenheit))")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
            
            
            
            
            
            
            
            
            Spacer()
    
        }
        .navigationTitle("Temperature Converter")
        .navigationBarTitleDisplayMode(.inline)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ContentView()
        }
    }
}
