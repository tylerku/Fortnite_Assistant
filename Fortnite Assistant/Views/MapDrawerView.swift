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

class MapDrawerView: UIView {
    
    var route: Line?
    var drawn = false
    var shapeLayer: CAShapeLayer?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customInit()
    }
    
    func customInit(){
        let imageName = "fortnite-map"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.contentMode = .scaleToFill
        
        imageView.frame = self.bounds
        imageView.frame = CGRect(x: 0, y: 0, width:         (UIApplication.shared.keyWindow?.screen.bounds.width)!
            , height: self.frame.height)
        self.addSubview(imageView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        route = Line()
        route?.begin = (touches.first?.location(in: self))!
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        route?.end = (touches.first?.location(in: self))!
        drawRoute()
    }
    
    func drawRoute(){
        if let begin = route?.begin, let end = route?.end {
            let path = UIBezierPath()
            path.move(to: begin)
            path.addLine(to: end)
            path.close()
            
            shapeLayer = CAShapeLayer()
            shapeLayer?.path = path.cgPath
            shapeLayer?.fillColor = UIColor.red.cgColor
            shapeLayer?.strokeColor = UIColor.red.cgColor
            shapeLayer?.lineWidth = 5.0
            
            if let shapeLayer = shapeLayer {
                self.layer.addSublayer(shapeLayer)
                drawn = true
                print(shapeLayer.opacity)
                print(self.alpha)
            }
        }
    }
    
    func removeRoute(){
        self.shapeLayer?.removeFromSuperlayer()
    }
}
