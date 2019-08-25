# SimpleLayout

example

        label.anchors { (make) in
            make.centerY.equalTo(view.centerYAnchor)
            make.height.equalTo(100)
            make.left.equalTo(view.leftAnchor).offset(50)
            make.right.equalTo(view.rightAnchor).offset(50)
        }
        
        boxView.anchors { (make) in
            make.width.equalTo(60)
            make.centerX.equalTo(view.centerXAnchor)
            make.bottom.equalTo(view.bottomAnchor).offset(50)
        }
