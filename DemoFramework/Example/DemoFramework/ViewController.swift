//
//  ViewController.swift
//  DemoFramework
//
//  Created by chavanambar@gmail.com on 02/19/2019.
//  Copyright (c) 2019 chavanambar@gmail.com. All rights reserved.
//

import UIKit
import DemoFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let fantasticView = DemoView(frame: self.view.bounds)
        self.view.addSubview(fantasticView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

