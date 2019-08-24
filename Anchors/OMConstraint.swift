//
//  OMConstraint.swift
//  Anchors
//
//  Created by Oleg on 8/24/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit

class OMConstraint {
    
    fileprivate let constraint: NSLayoutConstraint
    
    private var needInvertOffset: Bool {
        switch constraint.firstAttribute {
        case .right, .bottom, .height, .width:
            return true
        default:
            return false
        }
    }
    
    init(constraint: NSLayoutConstraint) {
        self.constraint = constraint
    }
    
    @discardableResult
    func priority(_ value: UILayoutPriority) -> OMConstraint {
        constraint.priority = value
        return self
    }
    
    @discardableResult
    func offset(_ value: CGFloat) -> OMConstraint {
        let offset = needInvertOffset ? -value : value
        constraint.constant = offset
        return self
    }

}
