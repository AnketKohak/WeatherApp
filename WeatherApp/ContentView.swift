//
//  ContentView.swift
//  WeatherApp
//
//  Created by Anket Kohak on 24/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Get the Location"){
                Task{
                    print("button is pressed")
                    let geocodingClient = GeoCodingClient()
                    let weatherCleint = WeatherClient()
                    let location = try! await geocodingClient.corinateByCity("Mumbai")
                    let weather = try! await weatherCleint.fetchWeather(location: location!)
                    print(weather)
                }
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
