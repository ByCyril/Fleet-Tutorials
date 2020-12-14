//
//  TipFour.swift
//  SwiftTricks
//
//  Created by Cyril Garcia on 12/13/20.
//

import UIKit

final class TipFour {
    
// Cool looping tricks
    
    init() {

        loopWithConditions()
        typecastingWhileLooping()
        unwrappingWhileLooping()
    }
    
    func loopWithConditions() {
        let scores = [0.95,0.75,0.63,0.78,0.54,0.78,0.68]
        
        for score in scores where score < 0.70 {
            print(score)
        }
    }
    
    func typecastingWhileLooping() {
        
        let grades: [Any] = [0.75,0.89,1.11,0.92]
        
        for case let grade as Double in grades {
            print(grade)
        }
    }
    
    func unwrappingWhileLooping() {
        
        let vals = [1,2,nil,4,nil,5]
        
        for case let val? in vals {
            print(val)
        }
    }
    
    
}
