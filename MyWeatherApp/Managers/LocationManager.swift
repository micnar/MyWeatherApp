//
//  LocationManager.swift
//  MyWeatherApp
//
//  Created by Michael on 23.10.23.
//

import CoreLocation
import Foundation

final class LocationManager: NSObject, CLLocationManagerDelegate {
    
    private let manager = CLLocationManager()
    
    static let shared = LocationManager()
    
    private var locationfetchCompletion: ((CLLocation) -> Void)?
    
    private var location: CLLocation? {
        didSet {
            guard let location else {
                return
            }
            locationfetchCompletion?(location)
        }
    }
    
    public func getCurrentLocation(completion: @escaping (CLLocation) -> Void) {
        
        self.locationfetchCompletion = completion
        
        manager.requestWhenInUseAuthorization()
        manager.delegate = self
        manager.startUpdatingLocation()
    }
    
    // Mark: - Location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
        self.location = location
        manager.stopUpdatingLocation()
    }
}
