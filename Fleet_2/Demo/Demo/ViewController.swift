//
//  ViewController.swift
//  Demo
//
//  Created by Cyril Garcia on 11/25/20.
//

import UIKit

protocol ViewSettingsProtocol {
    func backgroundColorDidChange(_ newBackgroundColor: UIColor)
    func titleDidChange(_ newTitle: String)
}

class ViewController: UIViewController, ViewSettingsProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func presentSettings() {
        
        let vc = SettingsViewController()
        
//        This starts the bridge of communication
//        between the ViewController class (self) and the SettingsViewController
        vc.delegate = self
        
        present(vc, animated: true, completion: nil)
    }
    
    func backgroundColorDidChange(_ newBackgroundColor: UIColor) {
        view.backgroundColor = newBackgroundColor
    }
    
    func titleDidChange(_ newTitle: String) {
//        Create your title and set the new title here
    }
}


