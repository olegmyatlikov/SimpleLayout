//
//  ViewController.swift
//  Anchors
//
//  Created by Oleg on 8/24/19.
//  Copyright © 2019 Oleg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let boxView = UIView()
        boxView.backgroundColor = .systemBlue
        view.addSubview(boxView)

        label.text = "hello, world!"
        label.backgroundColor = .lightGray
        
        label.anchors { (make) in
            make.centerY.equalTo(view.centerYAnchor)
            make.height.equalTo(100)
            make.left.equalTo(view.leftAnchor).offset(50)
            make.right.equalTo(view.rightAnchor).offset(50)
        }
        
        boxView.anchors { (make) in
            make.width.equalTo(label.widthAnchor).multiplier(1.2)
            make.height.equalTo(30)
            make.centerX.equalTo(view.centerXAnchor)
            make.bottom.equalTo(view.bottomAnchor).offset(50)
        }
    }
    
}

