//
//  OMAnchor.swift
//  Anchors
//
//  Created by Oleg on 8/24/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import Foundation
import UIKit

class OMLayout {
    
    private let view: UIView
    private let constraintsBox: OMConstraintsBox
    
    var left: OMLayoutAnchor<NSLayoutXAxisAnchor, NSLayoutXAxisAnchor> {
        return OMLayoutAnchor(anchor: view.leftAnchor, constraintsBox: constraintsBox)
    }
    
    var right: OMLayoutAnchor<NSLayoutXAxisAnchor, NSLayoutXAxisAnchor> {
        return OMLayoutAnchor(anchor: view.rightAnchor, constraintsBox: constraintsBox)
    }
    
    var centerX: OMLayoutAnchor<NSLayoutXAxisAnchor, NSLayoutXAxisAnchor> {
        return OMLayoutAnchor(anchor: view.centerXAnchor, constraintsBox: constraintsBox)
    }
    
    var top: OMLayoutAnchor<NSLayoutYAxisAnchor, NSLayoutYAxisAnchor> {
        return OMLayoutAnchor(anchor: view.topAnchor, constraintsBox: constraintsBox)
    }
    
    var bottom: OMLayoutAnchor<NSLayoutYAxisAnchor, NSLayoutYAxisAnchor> {
        return OMLayoutAnchor(anchor: view.bottomAnchor, constraintsBox: constraintsBox)
    }
    
    var centerY: OMLayoutAnchor<NSLayoutYAxisAnchor, NSLayoutYAxisAnchor> {
        return OMLayoutAnchor(anchor: view.centerYAnchor, constraintsBox: constraintsBox)
    }
    
    var width: OMLayoutAnchor<NSLayoutDimension, NSLayoutDimension> {
        return OMLayoutAnchor(anchor: view.widthAnchor, constraintsBox: constraintsBox)
    }
    
    var height: OMLayoutAnchor<NSLayoutDimension, NSLayoutDimension> {
        return OMLayoutAnchor(anchor: view.heightAnchor, constraintsBox: constraintsBox)
    }
    
    init(view: UIView, constraintsBox: OMConstraintsBox) {
        self.view = view
        self.constraintsBox = constraintsBox
    }
}
