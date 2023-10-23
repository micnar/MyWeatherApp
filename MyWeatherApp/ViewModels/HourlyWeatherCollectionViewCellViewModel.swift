//
//  HourlyWeatherCollectionViewCellViewModel.swift
//  MyWeatherApp
//
//  Created by Michael on 23.10.23.
//

import WeatherKit
import Foundation

struct HourlyWeatherCollectionViewCellViewModel {
    private let model: HourWeather
    
    init(model: HourWeather) {
        self.model = model
    }
    
    public var iconName: String {
        return model.symbolName
    }
    
    public var temperature: String {
        return model.temperature.description
    }
    
    public var hour: String {
        let hour = Calendar.current.component(.hour, from: model.date)
        return "\(hour):00"
    }
}
