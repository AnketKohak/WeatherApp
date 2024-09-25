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
                    let location = try! await geocodingClient.corinateByCity("Mumbai")
                    print(location)
                }
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
