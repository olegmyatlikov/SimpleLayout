//
//  ViewController.swift
//  Example
//
//  Created by Oleg Myatlikov on 17.02.21.
//

import UIKit
import SimpleLayout

class ViewController: UIViewController {

    private let firstView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()

    private let secondView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()

    private let thirdView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray
        view.addSubview(firstView)
        view.addSubview(secondView)
        view.addSubview(thirdView)

        setupConstraints()
    }

    private func setupConstraints() {
        firstView.makeLayout { (make) in
            make.bottom.equalTo(secondView.sl.top)
            make.height.equalTo(secondView.sl.height)
            make.width.equalTo(secondView.sl.width)
            make.centerX.equalTo(secondView.sl.centerX)
        }

        secondView.makeLayout { (make) in
            make.center.equalToSuperView()
            make.height.equalTo(50)
            make.width.equalToSuperView().multiplier(0.7)
        }

        thirdView.makeLayout { (make) in
            make.top.equalTo(secondView.sl.bottom)
            make.centerX.equalTo(secondView.sl.centerX)
            make.size.equalTo(secondView.sl.size)
        }
    }

}

