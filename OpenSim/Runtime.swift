//
//  Runtime.swift
//  OpenSim
//
//  Created by Luo Sheng on 11/12/15.
//  Copyright © 2015 Luo Sheng. All rights reserved.
//

import Foundation

struct Runtime: CustomStringConvertible {
    
    let name: String
    
    var description: String {
        // current version is format "iOS major.minir"
        // old versions of iOS are com.Apple.CoreSimulator.SimRuntime.iOS-major-minor
        
        let characterSet = NSCharacterSet(charactersInString: " -.")
        let components = name.componentsSeparatedByCharactersInSet(characterSet)
        
        guard components.count > 2 else {
            return name
        }
        
        let lastTwoComponents = components[components.count - 2 ..< components.count]
        return lastTwoComponents.joinWithSeparator(".")
    }
    
    init(name: String) {
        self.name = name
    }
    
}