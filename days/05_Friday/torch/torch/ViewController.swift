//
//  ViewController.swift
//  torch
//
//  Created by π on 07/07/2017.
//  Copyright © 2017 π. All rights reserved.
//

import UIKit
import AVFoundation

func toggleFlash() {
    if let device = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo),  device.hasTorch
    {
        do {
            try device.lockForConfiguration()
            
            if device.torchMode == .off {
                device.torchMode = .on
                try device.setTorchModeOnWithLevel(0.5)
            }
            else {
                device.torchMode = .off
            }
        } catch {
            print("error")
        }
        device.unlockForConfiguration()
        
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func buttonClicked(_ sender: Any) {
        print ("kerrrrrlick")
        myLabel.text = "Got me!"
        toggleFlash()
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

