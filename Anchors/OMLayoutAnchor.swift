//
//  OMAnchorTo.swift
//  Anchors
//
//  Created by Oleg on 8/24/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit

class OMLayoutAnchor<T, U> where T: NSLayoutAnchor<U> {
    
    fileprivate let anchor: NSLayoutAnchor<T>
    
    init(anchor: NSLayoutAnchor<T>) {
        self.anchor = anchor
    }
    
    @discardableResult
    func equalTo(_ anchor: NSLayoutAnchor<T>) -> OMConstraint {
        let constraint = self.anchor.constraint(equalTo: anchor)
        constraint.isActive = true
        return OMConstraint(constraint: constraint)
    }
    
    @discardableResult
    func greateThan(_ anchor: NSLayoutAnchor<T>) -> OMConstraint {
        let constraint = self.anchor.constraint(greaterThanOrEqualTo: anchor)
        constraint.isActive = true
        return OMConstraint(constraint: constraint)
    }
    
    @discardableResult
    func lessThan(_ anchor: NSLayoutAnchor<T>) -> OMConstraint {
        let constraint = self.anchor.constraint(lessThanOrEqualTo: anchor)
        constraint.isActive = true
        return OMConstraint(constraint: constraint)
    }
    
}


extension OMLayoutAnchor where U: NSLayoutDimension {
    
    @discardableResult
    func equalTo(_ value: CGFloat) -> OMConstraint {
        let sizeAnchor = anchor as! NSLayoutAnchor<NSLayoutDimension> as! NSLayoutDimension
        let constraint = sizeAnchor.constraint(equalToConstant: value)
        constraint.isActive = true
        return OMConstraint(constraint: constraint)
    }
    
    @discardableResult
    func greateThan(_ value: CGFloat) -> OMConstraint {
        let sizeAnchor = anchor as! NSLayoutAnchor<NSLayoutDimension> as! NSLayoutDimension
        let constraint = sizeAnchor.constraint(greaterThanOrEqualToConstant: value)
        constraint.isActive = true
        return OMConstraint(constraint: constraint)
    }
    
    @discardableResult
    func lessThan(_ value: CGFloat) -> OMConstraint {
        let sizeAnchor = anchor as! NSLayoutAnchor<NSLayoutDimension> as! NSLayoutDimension
        let constraint = sizeAnchor.constraint(lessThanOrEqualToConstant: value)
        constraint.isActive = true
        return OMConstraint(constraint: constraint)
    }
    
}

