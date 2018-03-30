//
//  ViewController.swift
//  Fortnite Assistant
//
//  Created by Ty Udy on 3/23/18.
//  Copyright © 2018 Ty Udy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var determineDropBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setup(){
        determineDropBtn.layer.cornerRadius = CGFloat(35)
        determineDropBtn.imageView?.layer.cornerRadius = CGFloat(35)
    }


}

