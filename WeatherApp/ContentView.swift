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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
https://api.openweathermap.org/data/2.5/weather?q=london&appid=4b5bccc114f5c70a9f5fdc38a60cbe8d
