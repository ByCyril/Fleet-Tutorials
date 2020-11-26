//
//  ViewController.swift
//  Demo
//
//  Created by Cyril Garcia on 11/25/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Post the location data
        let currentLocationNotificationName = Notification.Name("CurrentLocation")
        NotificationCenter.default.post(name: currentLocationNotificationName,
                                        object: nil,
                                        userInfo: ["LocationData": "Cupertino, CA"])
        
//        Post the weather data
        let currentWeatherNotificationName = Notification.Name("CurrentWeather")
        NotificationCenter.default.post(name: currentWeatherNotificationName,
                                        object: nil,
                                        userInfo: ["WeatherData": "65°"])
        
    }

}

