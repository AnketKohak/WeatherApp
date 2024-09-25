//
//  APIEndPoint.swift
//  WeatherApp
//
//  Created by Anket Kohak on 25/09/24.
//

import Foundation


enum APIEndPoint{
    static let baseURL = "https://api.openweathermap.org"
    
    case cordinatesByLocation(String)
    case weatherByLatLon(Double,Double)
    
    private var path:String{
        switch self{
        case .cordinatesByLocation(let city):
            return "data/2.5/weather?q=\(city)&appid=\(Constant.key)"
        case .weatherByLatLon(let lat, let lan):
            return "data/3.0/onecall?lat=\(lat)&lon=\(lan)&appid=\(Constant.key)"
        }
    }
    
    static func endPointURL(for endpoint:APIEndPoint)->URL{
        let endPointPath = endpoint.path
        return URL(string:baseURL + endPointPath)!
    }
}
