//
//  LocationModel.swift
//  Fortnite Assistant
//
//  Created by Zac Clark on 3/23/18.
//  Copyright © 2018 Ty Udy. All rights reserved.
//

import Foundation


class MapLocation {
    
    var name: String
    var loot: Double
    var resources: Double
    var isolation: Double
    var xcor: Double
    var ycor: Double
    
    init(fromName name: String, loot: Double, resources: Double, isolation: Double, xcor: Double, ycor: Double) {
        self.name = name
        self.loot = loot
        self.resources = resources
        self.isolation = isolation
        self.xcor = xcor
        self.ycor = ycor
    }
    
}
