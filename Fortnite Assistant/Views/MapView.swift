//
//  MapDrawerView.swift
//  Fortnite Assistant
//
//  Created by Ty Udy on 3/26/18.
//  Copyright © 2018 Ty Udy. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics

class MapView: UIView {
    
    private var route: Line?
    private var drawn = false
    private var shapeLayer: CAShapeLayer?
    var delegate: MapViewDelegate?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if drawn { return }
        route = Line()
        route?.begin = (touches.first?.location(in: self))!
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if drawn { return }
        
        self.shapeLayer?.removeFromSuperlayer()
        self.shapeLayer = nil

        route?.end = (touches.first?.location(in: self))!
        if let begin = route?.begin, let end = route?.end {
            let path = UIBezierPath()
            path.move(to: begin)
            path.addLine(to: end)
            
            
            shapeLayer = CAShapeLayer()
            shapeLayer?.path = path.cgPath
            shapeLayer?.fillColor = UIColor(red: 0.968627451, green: 0.8980392157, blue: 0.1450980392, alpha: 1.0).cgColor
            shapeLayer?.strokeColor = UIColor(red: 0.968627451, green: 0.8980392157, blue: 0.1450980392, alpha: 1.0).cgColor
            shapeLayer?.lineWidth = 5.0
            shapeLayer?.lineCap = kCALineCapRound
            path.close()
            
            if let shapeLayer = shapeLayer {
                self.layer.addSublayer(shapeLayer)
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if drawn { return }
        route?.end = (touches.first?.location(in: self))!
        drawRoute()
    }
    
    func drawRoute(){
        drawn = true
        delegate?.routeWasDrawn()
        
    }
    
    func removeRoute(){
        self.shapeLayer?.removeFromSuperlayer()
        self.shapeLayer = nil
        drawn = false
    }
}
