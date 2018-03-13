//
//  ASlider.swift
//  
//
//  Created by Antonio Salgado on 30/03/17.
//
//

import Foundation
import UIKit
class ASlider: UISlider
{
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        var bounds: CGRect = self.bounds
        bounds = bounds.insetBy(dx: -35, dy: -65)
        return bounds.contains(point)    }
}
