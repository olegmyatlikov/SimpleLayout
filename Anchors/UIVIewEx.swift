//
//  UIVIewEx.swift
//  Anchors
//
//  Created by Oleg on 8/24/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit

extension UIView {
    
    func anchors(_ makeAnchor: ((OMLayout) -> Void)) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constrainsBox = OMConstraintsBox()
        let anchor = OMLayout(view: self, constraintsBox: constrainsBox)
        makeAnchor(anchor)
        constrainsBox.constraints.forEach { $0.isActive = true }
    }
    
}
