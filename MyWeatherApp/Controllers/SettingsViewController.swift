//
//  SettingsViewController.swift
//  MyWeatherApp
//
//  Created by Michael on 23.10.23.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private let primaryView: SettingsView = {
        let view = SettingsView()
        let viewModel = SettingsViewModel(options: SettingsOption.allCases)
        view.configure(with: viewModel)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        primaryView.delegate = self
        setUpView()
    }
    
    private func setUpView() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(primaryView)
        NSLayoutConstraint.activate([
            primaryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            primaryView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            primaryView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            primaryView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
}

extension SettingsViewController: SettingsViewDelegate {
    func settingsView(_ settingsView: SettingsView, didTap option: SettingsOption) {
        
        switch option {
        case .upgrade:
            break
        case .privacyPolicy:
            break
        case .terms:
            break
        case .contact:
            break
        case .getHelp:
            break
        case .rateApp:
            break
        }
    }
    
    
}
