//
//  ReselectableSegmentedControl.swift
//  bookiOs
//
//  Created by Antonio Salgado on 31/03/17.
//  Copyright © 2017 Antonio Salgado. All rights reserved.
//

import UIKit

class ReselectableSegmentedControl: UISegmentedControl {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    var allowReselection: Bool = true
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let previousSelectedSegmentIndex = self.selectedSegmentIndex
        super.touchesEnded(touches, with: event)
        if allowReselection && previousSelectedSegmentIndex == self.selectedSegmentIndex {
            if let touch = touches.first {
                let touchLocation = touch.location(in: self)
                if bounds.contains(touchLocation) {
                    self.sendActions(for: .valueChanged)
                }
            }
        }
    }
    
}
