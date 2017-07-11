//
//  ViewController.swift
//  RGB
//
//  Created by π on 07/07/2017.
//  Copyright © 2017 π. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var R: UISlider!
    @IBOutlet weak var G: UISlider!
    @IBOutlet weak var B: UISlider!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        print("Slider # \(sender.tag) changed to value: \(sender.value)" )
        
        //https://stackoverflow.com/questions/32059833/use-slider-to-pick-a-color-for-views-background
        
        let fish = UIColor(
            red:   CGFloat(R.value),
            green: CGFloat(G.value),
            blue:  CGFloat(B.value),
            alpha: 1.0)
        
        self.view.backgroundColor = fish
    }
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

