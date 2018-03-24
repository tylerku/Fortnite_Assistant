//
//  MapLocations.swift
//  Fortnite Assistant
//
//  Created by Zac Clark on 3/23/18.
//  Copyright © 2018 Ty Udy. All rights reserved.
//

import Foundation


class MapData: NSObject {
    
    static let sharedInstance = MapData()
    
    private override init(){
        let anarchy = MapLocation(fromName:"Anarchy Achres", loot:6, resources:7, isolation:7, xcor:0, ycor:0)
        let dusty = MapLocation(fromName:"Dusty Depot", loot:5, resources:6, isolation:6, xcor:0, ycor:0)
        let fatal = MapLocation(fromName:"Fatal Fields", loot:6, resources:7, isolation:5, xcor:0, ycor:0)
        let flush = MapLocation(fromName:"Flush Factory", loot:3, resources:5, isolation:9, xcor:0, ycor:0)
        let greasy = MapLocation(fromName:"Greasy Grove", loot:4, resources:6, isolation:6, xcor:0, ycor:0)
        let haunted = MapLocation(fromName:"Haunted Hills", loot:3, resources:5, isolation:10, xcor:0, ycor:0)
        let junk = MapLocation(fromName:"Junk Junction", loot:3, resources:4, isolation:10, xcor:0, ycor:0)
        let lonely = MapLocation(fromName:"Lonely Lodge", loot:4, resources:6, isolation:7, xcor:0, ycor:0)
        let loot = MapLocation(fromName:"Loot Lake", loot:4, resources:4, isolation:5, xcor:0, ycor:0)
        let lucky = MapLocation(fromName:"Lucky Landing", loot:5, resources:6, isolation:5, xcor:0, ycor:0)
        let moisty = MapLocation(fromName:"Moisty Mire", loot:1, resources:4, isolation:9, xcor:0, ycor:0)
        let pleasant = MapLocation(fromName:"Pleasant Park", loot:6, resources:7, isolation:3, xcor:0, ycor:0)
        let retail = MapLocation(fromName:"Retail Row", loot:6, resources:7, isolation:3, xcor:0, ycor:0)
        let salty = MapLocation(fromName:"Dusty Depot", loot:5, resources:7, isolation:3, xcor:0, ycor:0)
        let shifty = MapLocation(fromName:"Shifty Shafts", loot:2, resources:7, isolation:7, xcor:0, ycor:0)
        let snobby = MapLocation(fromName:"Snobby Shores", loot:4, resources:5, isolation:8, xcor:0, ycor:0)
        let tilted = MapLocation(fromName:"Tilted Towers", loot:10, resources:9, isolation:1, xcor:0, ycor:0)
        let tomato = MapLocation(fromName:"Tomato Town", loot:2, resources:5, isolation:7, xcor:0, ycor:0)
        let wailing = MapLocation(fromName:"Wailing Woods", loot:1, resources:10, isolation:6, xcor:0, ycor:0)
        
        let locationsArray = [anarchy, dusty, fatal, flush, greasy, haunted, junk, lonely, loot, lucky, moisty, pleasant, retail, salty, shifty, snobby, tilted, tomato, wailing]
        
    }
    
   
}
