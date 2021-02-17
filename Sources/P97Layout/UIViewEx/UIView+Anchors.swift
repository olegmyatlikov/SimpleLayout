//
//  UIVIewEx.swift
//  Anchors
//
//  Created by Oleg on 8/24/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit

public extension UIView {
    
    var sl: OMSimpleLayout {
        return OMSimpleLayout(view: self)
    }
    
    func makeLayout(_ make: ((OMSimpleLayout) -> Void)) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constrainsBox = OMConstraintsBox()
        let layout = OMSimpleLayout(view: self, constaintsBox: constrainsBox)
        make(layout)
        constrainsBox.constraints.forEach { $0.isActive = true }
    }
    
}
