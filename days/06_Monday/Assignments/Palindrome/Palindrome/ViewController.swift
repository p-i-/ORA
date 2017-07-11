//
//  ViewController.swift
//  Palindrome
//
//  Created by π on 10/07/2017.
//  Copyright © 2017 π. All rights reserved.
//

import UIKit

func isPalendrome(_ s:String) -> Bool {
    var target = ""
    for c in s.characters {
        target = String(c) + target
    }
    return target == s
}

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTxt: UITextField!
    
    @IBAction func btnClick(_ sender: Any) {
        let text = myTxt.text
        if isPalendrome(text!) {
            myLabel.text = "YES"
        }
        else {
            myLabel.text = "NO"
        }
    }
}

