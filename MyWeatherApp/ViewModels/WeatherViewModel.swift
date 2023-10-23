//
//  CurrentWeatherViewModel.swift
//  MyWeatherApp
//
//  Created by Michael on 23.10.23.
//

import Foundation

enum WeatherViewModel {
    case current(viewModel: CurrentWeatherCollectionViewCellViewModel)
    case daily(viewModels: [DailyWeatherCollectionViewCellViewModel])
    case hourly(viewModels: [HourlyWeatherCollectionViewCellViewModel])
}
