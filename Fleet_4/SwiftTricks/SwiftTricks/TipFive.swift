//
//  TipFive.swift
//  SwiftTricks
//
//  Created by Cyril Garcia on 12/13/20.
//

import Foundation

final class TipFive {
    
// Check for values within a range
    
    init() {
        
        if (1...100).contains(97) {}
        
//        or
        
        if (1...100) ~= 97 {}
        
    }
}
