//
//  ViewController.swift
//  Example
//
//  Created by zhujl on 2018/8/19.
//  Copyright © 2018年 finstao. All rights reserved.
//

import UIKit

import DotIndicator

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let indicator = DotIndicator()
        indicator.index = 2
        indicator.count = 10
        indicator.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(indicator)
        view.backgroundColor = UIColor(red: 240 / 255, green: 240 / 255, blue: 240 / 255, alpha: 1)
        
        view.addConstraints([
            NSLayoutConstraint(item: indicator, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: indicator, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
        ])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

