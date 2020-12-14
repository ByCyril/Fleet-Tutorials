//
//  TipTwo.swift
//  SwiftTricks
//
//  Created by Cyril Garcia on 12/13/20.
//

import UIKit

final class TipTwo {
    
// Pass a function to perform stuff
    
    init() {
        
        let squares = [1,2,3,4].map(squared)
        print(squares)
        
//        or
        
        let cubed = { (i: Double) -> Double in
            return i*i*i
        }
        
        let cubes = [1,2,3,4].map(cubed)
        print(cubes)
        
    }
    
    func squared(_ i: Int) -> Int {
        return i*i
    }
    
    func doMath() {
        let squares = [1,2,3,4].map(squared)
        print(squares)
    }
    
}
