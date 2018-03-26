//
//  MapViewController.swift
//  Fortnite Assistant
//
//  Created by Ty Udy on 3/23/18.
//  Copyright © 2018 Ty Udy. All rights reserved.
//

import Foundation
import UIKit

class MapViewController: UIViewController {
    @IBOutlet weak var topNumber: UILabel!
    @IBOutlet weak var middleNumber: UILabel!
    @IBOutlet weak var bottomNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let locations = MapData.sharedInstance.locations
        for location in locations! {
            print(location.name)
        }
        
    }
    
    @IBAction func topSliderChanged(_ sender: UISlider) {
        topNumber.text = String(Int(sender.value * 10))
    }
    
    @IBAction func middleSliderChanged(_ sender: UISlider) {
        middleNumber.text = String(Int(sender.value * 10))
    }
    
    @IBAction func bottomSliderChanged(_ sender: UISlider) {
        bottomNumber.text = String(Int(sender.value * 10))
    }
    
    
    
    
      
}
