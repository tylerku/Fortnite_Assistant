//
//  UIUtils.swift
//  Fortnite Assistant
//
//  Created by Ty Udy on 4/13/18.
//  Copyright © 2018 Ty Udy. All rights reserved.
//

import Foundation
import UIKit

class UIUtils {
    static func loadNib(fromFile file: String, parentView: UIView, nibView: UIView?) {
        Bundle.main.loadNibNamed(file, owner: parentView, options: nil)
        parentView.addSubview(nibView!)
        nibView!.frame = parentView.bounds
        nibView!.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
}
