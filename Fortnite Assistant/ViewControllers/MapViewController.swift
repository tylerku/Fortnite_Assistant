//
//  MapViewController.swift
//  Fortnite Assistant
//
//  Created by Ty Udy on 3/23/18.
//  Copyright © 2018 Ty Udy. All rights reserved.
//

import Foundation
import UIKit

class MapViewController: UIViewController, MapViewDelegate {
    func routeWasDrawn() {
        //...
    }
    
    
   
    @IBOutlet weak var mapView: MapView!
//    @IBOutlet weak var redoButton: UIButton!
//    @IBOutlet weak var okButton: UIButton!
//    @IBOutlet weak var buttonsStackView: UIStackView!
    
//    @IBOutlet weak var dropButton: UIButton!
    // MARK: - ViewController Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }
    
    // MARK: - Actions
    

    
    
    
    
    
      
}
