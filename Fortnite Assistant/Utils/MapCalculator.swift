//
//  MapCalculator.swift
//  Fortnite Assistant
//
//  Created by Ty Udy on 3/27/18.
//  Copyright © 2018 Ty Udy. All rights reserved.
//

import Foundation

class MapCalculator {
    // Access this function from another class with MapCalculator.calculateRoute()
    static func calculateRoute(x1: Double, y1: Double, x2: Double, y2: Double) -> Array<Double>{
        // Note: This function should probably encorporate the Line object that is going to be stored inside the MapView at runtime. Checkout the object in the Models folder. Idk if this function will even be necessary because of that? Buy maybe it will be?
        let m = (y1 - y2)/(x1 - x2)
        let b = (x1 * y1 - x2 * y1) / (x1 - x2)
        
        let lineData: [Double] = [m, b]
        return lineData
    }
    
    static func calculateDistance(x1: Double, y1: Double, m: Double, b: Double) -> Double{
        let new_m = -1 / m
        let new_b = y1 - (new_m * x1)
        
        let new_x = -(b - new_b) / (m - new_m)
        let new_y = (m * new_x) + b
        
        return (pow(new_x - x1,2) + pow(new_y - y1, 2)).squareRoot()
    }
    
    static func scoreLocation(location: MapLocation, distance: Double, loot: Double, resouces: Double, isolation: Double) -> Double{
        let preferences = abs(loot - location.loot) + abs(resouces - location.resources)
        return  preferences + (abs(isolation - location.isolation) / (distance.squareRoot()))
    }
    
    static func determineDrop(loot: Double, resources: Double, isolation: Double) -> String{
        
        // EXAMPLE: points (x1, y1), (x2, y2) given from route drawn by user
        var line_equation = calculateRoute(x1:0, y1:0, x2:10, y2:10)
        
        // find the distance and score for each location
        var Scores: [Double] = []
        for location in MapData.sharedInstance.locations! {
            let distance = calculateDistance(x1:location.xcor, y1:location.ycor, m:line_equation[0], b:line_equation[1])
            let score = scoreLocation(location:location, distance:distance, loot:loot, resouces:resources, isolation:isolation)
            Scores.append(score)
        }

        // find the location with the lowest score
        var minScore = Scores[0]
        var dropLocation: MapLocation
        dropLocation = MapData.sharedInstance.locations![0]
        let scoresLength = Scores.count
        for x in 1...scoresLength{
            if Scores[x] < minScore{
                minScore = Scores[x]
                dropLocation = MapData.sharedInstance.locations![x]
            }
        }
        // drop_location is the calculated lowest drop!
        return dropLocation.name
    }
}
