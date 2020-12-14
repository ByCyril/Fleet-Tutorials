//
//  TipThree.swift
//  SwiftTricks
//
//  Created by Cyril Garcia on 12/13/20.
//

import UIKit

final class TipThree {

// Useful URL Extensions
// Credits to @twannl https://twitter.com/twannl/status/1334428251213717506?s=21
    
    init() {
        
        let _ = URL("https://bycyril.com")
        
        let urlWithPath = URLComponents(string: "https://bycyril.com/view?article=1oNXUxm82QuNu735iHcNLF")!
        let _ = urlWithPath.queryItems!["article"]
        
    }
}

extension URL {
    init(_ string: String) {
        self.init(string: "\(string)")!
    }
}

extension Collection where Element == URLQueryItem {
    subscript(_ name: String) -> String? {
        first(where: { $0.name == name})?.value
    }
}




