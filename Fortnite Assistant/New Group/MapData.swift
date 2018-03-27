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
    
    var locations: [MapLocation]?
    
    private override init(){
        super.init()
        let anarchy = MapLocation(fromName:"Anarchy Achres", loot:6, resources:7, isolation:7, xcor:197, ycor:88)
        let dusty = MapLocation(fromName:"Dusty Depot", loot:5, resources:6, isolation:6, xcor:219, ycor:171.5)
        let fatal = MapLocation(fromName:"Fatal Fields", loot:6, resources:7, isolation:5, xcor:225, ycor:285)
        let flush = MapLocation(fromName:"Flush Factory", loot:3, resources:5, isolation:9, xcor:133, ycor:323.5)
        let greasy = MapLocation(fromName:"Greasy Grove", loot:4, resources:6, isolation:6, xcor:86, ycor:234)
        let haunted = MapLocation(fromName:"Haunted Hills", loot:3, resources:5, isolation:10, xcor:60, ycor:79.5)
        let junk = MapLocation(fromName:"Junk Junction", loot:3, resources:4, isolation:10, xcor:74.5, ycor:49)
        let lonely = MapLocation(fromName:"Lonely Lodge", loot:4, resources:6, isolation:7, xcor:336, ycor:160.5)
        let loot = MapLocation(fromName:"Loot Lake", loot:4, resources:4, isolation:5, xcor:164, ycor:140)
        let lucky = MapLocation(fromName:"Lucky Landing", loot:5, resources:6, isolation:5, xcor:213, ycor:341.5)
        let moisty = MapLocation(fromName:"Moisty Mire", loot:1, resources:4, isolation:9, xcor:314.5, ycor:295.5)
        let pleasant = MapLocation(fromName:"Pleasant Park", loot:6, resources:7, isolation:3, xcor:106.5, ycor:112)
        let retail = MapLocation(fromName:"Retail Row", loot:6, resources:7, isolation:3, xcor:280, ycor:201)
        let salty = MapLocation(fromName:"Salty Springs", loot:5, resources:7, isolation:3, xcor:211.5, ycor:232.5)
        let shifty = MapLocation(fromName:"Shifty Shafts", loot:2, resources:7, isolation:7, xcor:139.5, ycor:238.5)
        let snobby = MapLocation(fromName:"Snobby Shores", loot:4, resources:5, isolation:8, xcor:32, ycor:170.5)
        let tilted = MapLocation(fromName:"Tilted Towers", loot:10, resources:9, isolation:1, xcor:140.5, ycor:186.5)
        let tomato = MapLocation(fromName:"Tomato Town", loot:2, resources:5, isolation:7, xcor:248, ycor:120.5)
        let wailing = MapLocation(fromName:"Wailing Woods", loot:1, resources:10, isolation:6, xcor:309, ycor:112.5)
        
        self.locations = [anarchy, dusty, fatal, flush, greasy, haunted, junk, lonely, loot, lucky, moisty, pleasant, retail, salty, shifty, snobby, tilted, tomato, wailing]
        
    }
    
   
}
