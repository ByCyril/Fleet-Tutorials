//
//  SettingsViewController.swift
//  Demo
//
//  Created by Cyril Garcia on 11/26/20.
//

import UIKit

final class SettingsViewController: UIViewController {
    
//    This will be our bridge between
//    the ViewController and the SettingsViewController
    var delegate: ViewSettingsProtocol?
    
    @IBAction func selectBlack() {
        delegate?.backgroundColorDidChange(.black)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectGreen() {
        delegate?.backgroundColorDidChange(.green)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectRed() {
        delegate?.backgroundColorDidChange(.red)
        dismiss(animated: true, completion: nil)
    }
}


