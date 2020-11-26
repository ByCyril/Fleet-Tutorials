//
//  CurrentWeatherView.swift
//  Demo
//
//  Created by Cyril Garcia on 11/25/20.
//

import UIKit

final class CurrentWeatherView: UIView {
    
    @IBOutlet weak var weatherLabel: UILabel!
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()

//        Create a selector that will handle the data recieved
        let selector = #selector(receivedData(_:))
        
//        Create the ID that will reference the type of notification to listen to
        let observerID = Notification.Name("CurrentWeather")
        
//        Create the observer
        NotificationCenter.default.addObserver(self,
                                               selector: selector,
                                               name: observerID,
                                               object: nil)
    }
    
    @objc
    func receivedData(_ object: NSNotification) {
        guard let temp = object.userInfo?["WeatherData"] as? String else { return }
        weatherLabel.text = temp
    }

}
