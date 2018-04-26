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
   
   
    @IBOutlet weak var mapView: MapView!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var redoButton: UIButton!
 
    // MARK: - ViewController Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .default
    }
    
    // MARK: - MapViewDelegate functions

    func routeWasDrawn() {
        okButton.isHidden = false
        redoButton.isHidden = false
    }
    
    // MARK: - Action
    
    @IBAction func redoButtonTapped(_ sender: UIButton) {
        removeRoute()
    }
    
    // MARK: - helpers
    
    private func removeRoute(){
        mapView.removeRoute()
    }
}
