//
//  Extension + UIButton.swift
//  Homework_9
//
//  Created by user187279 on 12/30/20.
//

import UIKit

extension UIButton {
    
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.fromValue = 0.95
        pulse.toValue = 1
        pulse.duration = 0.6
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1
        
        layer.add(pulse, forKey: nil)
    }
        
}
