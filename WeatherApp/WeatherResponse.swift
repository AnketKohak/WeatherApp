//
//  WeatherResponse.swift
//  WeatherApp
//
//  Created by Anket Kohak on 24/09/24.
//

import Foundation




struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
}
