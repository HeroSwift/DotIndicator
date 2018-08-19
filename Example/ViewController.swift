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
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor(red: 240 / 255, green: 240 / 255, blue: 240 / 255, alpha: 1)
        
        let indicator = DotIndicator()
        indicator.frame = CGRect(x: 100, y: 100, width: 200, height: 30)
        indicator.index = 2
        indicator.count = 10
        
        indicator.sizeToFit()
        
        view.addSubview(indicator)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

