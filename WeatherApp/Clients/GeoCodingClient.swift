//
//  GeoCodingClient.swift
//  WeatherApp
//
//  Created by Anket Kohak on 25/09/24.
//

import Foundation


enum NetworkError:Error{
    case inValidResponse
}


struct GeoCodingClient{
    func corinateByCity(_ city :String) async throws -> Location?{
        
        let (data,response) = try await URLSession.shared.data(from: APIEndpoint.endpointURL(for: .coordinatesByLocationName(city)))

        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else{
            throw NetworkError.inValidResponse
        }
        
        let locations = try JSONDecoder().decode([Location].self, from: data)
        return locations.first
        
    }
}
