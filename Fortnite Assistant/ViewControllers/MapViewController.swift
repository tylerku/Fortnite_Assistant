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
    
    @IBOutlet weak var topNumber: UILabel!
    @IBOutlet weak var middleNumber: UILabel!
    @IBOutlet weak var bottomNumber: UILabel!
    @IBOutlet weak var topSlider: UISlider!
    @IBOutlet weak var middleSlider: UISlider!
    @IBOutlet weak var bottomSlider: UISlider!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var mapView: MapView!
    @IBOutlet weak var redoButton: UIButton!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var buttonsStackView: UIStackView!
    
    @IBOutlet weak var dropButton: UIButton!
    // MARK: - ViewController Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        self.setup()
    }
    
    // MARK: - Actions
    
    @IBAction func topSliderChanged(_ sender: UISlider) {
        topNumber.text = String(Int(sender.value * 10))
    }
    
    @IBAction func middleSliderChanged(_ sender: UISlider) {
        middleNumber.text = String(Int(sender.value * 10))
    }
    
    @IBAction func bottomSliderChanged(_ sender: UISlider) {
        bottomNumber.text = String(Int(sender.value * 10))
    }
    
    @IBAction func okTapped(_ sender: UIButton) {
        hideMapButtons(true)
        hideLowerUI(false)
    }
    
    @IBAction func redoTapped(_ sender: UIButton) {
        mapView.removeRoute()
        hideMapButtons(true)
    }
    
    
    
    // MARK: - MapViewDelegate
    
    func routeWasDrawn() {
        hideMapButtons(false)
    }
    
    // MAKR: - Helper Fucntions
    
    func setup(){
        okButton.layer.cornerRadius = CGFloat(15)
        redoButton.layer.cornerRadius = CGFloat(15)
        dropButton.layer.cornerRadius = CGFloat(20)
        okButton.alpha = 0.7
        redoButton.alpha = 0.7

    }
    
    func hideMapButtons(_ state: Bool){
        buttonsStackView.isHidden = state
    }
    
    func hideLowerUI(_ state: Bool){
        topLabel.isHidden = state
        middleLabel.isHidden = state
        bottomLabel.isHidden = state
        topSlider.isHidden = state
        middleSlider.isHidden = state
        bottomSlider.isHidden = state
        topNumber.isHidden = state
        middleNumber.isHidden = state
        bottomNumber.isHidden = state
        dropButton.isHidden = state
    }
    
    
    
    
    
      
}
