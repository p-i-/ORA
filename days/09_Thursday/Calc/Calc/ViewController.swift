//
//  ViewController.swift
//  Calc
//
//  Created by π on 13/07/2017.
//  Copyright © 2017 π. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func btnClick(_ sender: Any) {
        //        let textA = txt1.text
        //        let numA : Int? = Int(textA!)
        //
        //        let textB = txt2.text
        //        let numB : Int? = Int(textB!)
        //
        //        if numA != nil  && numB != nil {
        //            myLabel.text = String(numA! + numB!)
        //        }
        //        else {
        //            myLabel.text = "Invalid!"
        //        }
        
        if let A : Int = Int(txt1.text!), let B : Int = Int(txt2.text!) {
            myLabel.text = String(A+B)
        }
        else {
            myLabel.text = "Invalid!"
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

