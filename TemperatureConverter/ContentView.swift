//
//  ContentView.swift
//  TemperatureConverter
//
//  Created by Berk Bozkurt on 2021-12-02.
//

import SwiftUI

struct ContentView: View {
    @State var temperature: Double = 15.00
    
    
    
    
    var body: some View {
       
        VStack (alignment: .leading, spacing: 20) {
        
        Text("Temperature")
                .bold()
        
        
        Slider(value: .constant(50.0),
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
