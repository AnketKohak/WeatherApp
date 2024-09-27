//
//  WeatherClient.swift
//  WeatherApp
//
//  Created by Anket Kohak on 27/09/24.
//

import Foundation



struct WeatherClient{
    
    func fetchWeather(location:Location) async  throws -> Weather{
        let (data,response) = try await URLSession.shared.data(from: APIEndpoint.endpointURL(for: .weatherByLatLon(location.lat, location.lon)))

        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else{
            throw NetworkError.inValidResponse
        }
        
        let weatherResponse = try JSONDecoder().decode(WeatherResponse.self, from: data)
        return weatherResponse.main

        
    }
}
