//
//  UILayoutGuide+Anchors.swift
//  P97Layout
//
//  Created by Oleg Myatlikov on 8/29/19.
//  Copyright © 2019 P97. All rights reserved.
//

import UIKit

public extension UILayoutGuide {

    var sl: OMSimpleLayout {
        return OMSimpleLayout(view: owningView!, safeAreaGuide: self)
    }
    
}
