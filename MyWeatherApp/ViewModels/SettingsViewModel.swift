//
//  SettingsViewModel.swift
//  MyWeatherApp
//
//  Created by Michael on 23.10.23.
//

import Foundation

struct SettingsViewModel {
    let options: [SettingsOption]
}

enum SettingsOption : CaseIterable {
    case upgrade
    case privacyPolicy
    case terms
    case contact
    case getHelp
    case rateApp
    
    var title: String {
        switch self {
        case .upgrade:
            return "Upgrade"
        case .privacyPolicy:
            return "Privacy Policy"
        case .terms:
            return "Terms of Service"
        case .contact:
            return "Contact"
        case .getHelp:
            return "Get help"
        case .rateApp:
            return "Rate the App"
        }
        
    }
}
