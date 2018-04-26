//
//  PreferencesModalViewController.swift
//  Fortnite Assistant
//
//  Created by Ty Udy on 4/25/18.
//  Copyright © 2018 Ty Udy. All rights reserved.
//

import Foundation
import UIKit


class PreferencesModalViewController: UIViewController, PreferencesModalDelegate {
    
    @IBOutlet weak var preferencesModal: PreferencesModal!
    
    override func viewDidLoad() {
    self.preferencesModal.delegate = self
    }
    
    func dropButtonClicked() {
        dismiss(animated: true, completion: nil)
    }
    
}
