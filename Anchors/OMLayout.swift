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
    
    var left: OMLayoutAnchor<NSLayoutXAxisAnchor, NSLayoutXAxisAnchor> {
        return OMLayoutAnchor(anchor: view.leftAnchor)
    }
    
    var right: OMLayoutAnchor<NSLayoutXAxisAnchor, NSLayoutXAxisAnchor> {
        return OMLayoutAnchor(anchor: view.rightAnchor)
    }
    
    var centerX: OMLayoutAnchor<NSLayoutXAxisAnchor, NSLayoutXAxisAnchor> {
        return OMLayoutAnchor(anchor: view.centerXAnchor)
    }
    
    var top: OMLayoutAnchor<NSLayoutYAxisAnchor, NSLayoutYAxisAnchor> {
        return OMLayoutAnchor(anchor: view.topAnchor)
    }
    
    var bottom: OMLayoutAnchor<NSLayoutYAxisAnchor, NSLayoutYAxisAnchor> {
        return OMLayoutAnchor(anchor: view.bottomAnchor)
    }
    
    var centerY: OMLayoutAnchor<NSLayoutYAxisAnchor, NSLayoutYAxisAnchor> {
        return OMLayoutAnchor(anchor: view.centerYAnchor)
    }
    
    var width: OMLayoutAnchor<NSLayoutDimension, NSLayoutDimension> {
        return OMLayoutAnchor(anchor: view.widthAnchor)
    }
    
    var height: OMLayoutAnchor<NSLayoutDimension, NSLayoutDimension> {
        return OMLayoutAnchor(anchor: view.heightAnchor)
    }
    
    init(view: UIView) {
        self.view = view
    }
}
