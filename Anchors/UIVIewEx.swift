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
        let anchor = OMLayout(view: self)
        makeAnchor(anchor)
    }
    
}
