//
//  PreferencesModal.swift
//  Fortnite Assistant
//
//  Created by Ty Udy on 4/13/18.
//  Copyright © 2018 Ty Udy. All rights reserved.
//

import UIKit

class PreferencesModal: UIView {
    @IBOutlet var view: UIView!
    @IBOutlet weak var lootLabel: UILabel!
    @IBOutlet weak var resourcesLabel: UILabel!
    @IBOutlet weak var isolationLabel: UILabel!
    @IBOutlet weak var lootSlider: UISlider!
    @IBOutlet weak var resourcesSlider: UISlider!
    @IBOutlet weak var isolationSlider: UISlider!
    @IBOutlet weak var dropButton: UIButton!
    @IBInspectable let cornerRadius: CGFloat = 15
    var delegate: PreferencesModalDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        commonInit()
        roundUIElementEdges()
    }
    private func commonInit(){
        loadNibFromBundle()
    }
    
    @IBAction func lootSliderChanged(_ sender: UISlider) {
        lootLabel.text = String(Int(lootSlider.value * 10))
    }
    
    @IBAction func resourcesSliderChanged(_ sender: UISlider) {
        resourcesLabel.text = String(Int(resourcesSlider.value * 10))
    }
    
    @IBAction func isolationSliderChanged(_ sender: UISlider) {
        isolationLabel.text = String(Int(isolationSlider.value * 10))
    }
    
    @IBAction func dropClicked(_ sender: UIButton) {
        self.delegate?.dropButtonClicked()
    }
    
    private func loadNibFromBundle(){
        Bundle.main.loadNibNamed(PREFERENCES_MODAL_NIB, owner: self, options: nil)
        addSubview(view)
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    private func roundUIElementEdges(){
        dropButton.layer.cornerRadius = CORNER_RADIUS

        dropButton.imageView?.layer.cornerRadius = CORNER_RADIUS
        self.layer.cornerRadius = CORNER_RADIUS
        self.layer.masksToBounds = true
    }
}
