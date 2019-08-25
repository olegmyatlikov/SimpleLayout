//
//  OMConstraint.swift
//  Anchors
//
//  Created by Oleg on 8/24/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit

class OMConstraint {
    
    fileprivate var constraint: NSLayoutConstraint
    fileprivate let constraintsBox: OMConstraintsBox
    
    private var needInvertOffset: Bool {
        switch constraint.firstAttribute {
        case .right, .bottom, .height, .width:
            return true
        default:
            return false
        }
    }
    
    init(constraint: NSLayoutConstraint, constraintsBox: OMConstraintsBox) {
        self.constraint = constraint
        self.constraintsBox = constraintsBox
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
    
    @discardableResult
    func multiplier(_ value: CGFloat) -> OMConstraint {
        let newConstraint = NSLayoutConstraint(item: constraint.firstItem!,
                                               attribute: constraint.firstAttribute,
                                               relatedBy: constraint.relation,
                                               toItem: constraint.secondItem,
                                               attribute: constraint.secondAttribute,
                                               multiplier: value,
                                               constant: constraint.constant)
        
        if let oldConstraintIndex = constraintsBox.constraints.firstIndex(of: constraint) {
            constraintsBox.constraints.remove(at: oldConstraintIndex)
        }
        
        constraint = newConstraint
        constraintsBox.constraints.append(newConstraint)
        
        return self
    }

}
