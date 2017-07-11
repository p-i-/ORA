//
//  ViewController.swift
//  ButtonLabel
//
//  Created by π on 05/07/2017.
//  Copyright © 2017 π. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func buttonWasClicked(_ sender: Any) {
        print("Clicked!")
        myLabel.text = "Thanks!"
    }

    //override func viewDidLoad() {
    //    super.viewDidLoad()
    //    // Do any additional setup after loading the view, typically from a nib.
    //}
    //
    //override func didReceiveMemoryWarning() {
    //    super.didReceiveMemoryWarning()
    //    // Dispose of any resources that can be recreated.
    //}
}

