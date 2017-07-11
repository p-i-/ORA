//
//  ViewController.swift
//  timerTest
//
//  Created by π on 10/07/2017.
//  Copyright © 2017 π. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(ViewController.tick),
            userInfo: nil,
            repeats: true
        )
    }

    func tick() {
        print("tick");
    }
}

