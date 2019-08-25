//
//  OMAnchorTo.swift
//  Anchors
//
//  Created by Oleg on 8/24/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit

public class OMLayoutAnchor<T, U> where T: NSLayoutAnchor<U> {
    
    fileprivate let anchor: NSLayoutAnchor<T>
    fileprivate let constraintsBox: OMConstraintsBox
    
    init(anchor: NSLayoutAnchor<T>, constraintsBox: OMConstraintsBox) {
        self.anchor = anchor
        self.constraintsBox = constraintsBox
    }
    
    @discardableResult
    public func equalTo(_ anchor: NSLayoutAnchor<T>) -> OMConstraint {
        let constraint = self.anchor.constraint(equalTo: anchor)
        constraintsBox.constraints.append(constraint)
        return OMConstraint(constraint: constraint, constraintsBox: constraintsBox)
    }
    
    @discardableResult
    public func greateThan(_ anchor: NSLayoutAnchor<T>) -> OMConstraint {
        let constraint = self.anchor.constraint(greaterThanOrEqualTo: anchor)
        constraintsBox.constraints.append(constraint)
        return OMConstraint(constraint: constraint, constraintsBox: constraintsBox)
    }
    
    @discardableResult
    public func lessThan(_ anchor: NSLayoutAnchor<T>) -> OMConstraint {
        let constraint = self.anchor.constraint(lessThanOrEqualTo: anchor)
        constraintsBox.constraints.append(constraint)
        return OMConstraint(constraint: constraint, constraintsBox: constraintsBox)
    }
    
}


public extension OMLayoutAnchor where U: NSLayoutDimension {
    
    @discardableResult
    func equalTo(_ value: CGFloat) -> OMConstraint {
        let sizeAnchor = anchor as! NSLayoutAnchor<NSLayoutDimension> as! NSLayoutDimension
        let constraint = sizeAnchor.constraint(equalToConstant: value)
        constraintsBox.constraints.append(constraint)
        return OMConstraint(constraint: constraint, constraintsBox: constraintsBox)
    }
    
    @discardableResult
    func greateThan(_ value: CGFloat) -> OMConstraint {
        let sizeAnchor = anchor as! NSLayoutAnchor<NSLayoutDimension> as! NSLayoutDimension
        let constraint = sizeAnchor.constraint(greaterThanOrEqualToConstant: value)
        constraintsBox.constraints.append(constraint)
        return OMConstraint(constraint: constraint, constraintsBox: constraintsBox)
    }
    
    @discardableResult
    func lessThan(_ value: CGFloat) -> OMConstraint {
        let sizeAnchor = anchor as! NSLayoutAnchor<NSLayoutDimension> as! NSLayoutDimension
        let constraint = sizeAnchor.constraint(lessThanOrEqualToConstant: value)
        constraintsBox.constraints.append(constraint)
        return OMConstraint(constraint: constraint, constraintsBox: constraintsBox)
    }
    
}

