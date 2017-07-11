//
//  ViewController.swift
//  Timer
//
//  Created by π on 10/07/2017.
//  Copyright © 2017 π. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var timer : Timer?
    var t = 0

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var mySlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = String(Int(mySlider.value))
    }
    
    @IBAction func playTapped(_ sender: Any) {
        t = Int(mySlider.value)
        timer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(ViewController.tick),
            userInfo: nil,
            repeats: true
        )
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        sender.value = Float(Int(sender.value))
        
        myLabel.text = String( Int(sender.value) )
    }
    
    func tick() {
        t -= 1
        mySlider.value = Float(t)
        myLabel.text = String(t)
        if t==0 {
            timer?.invalidate()
            playAudio()
        }
    }
    
    var player = AVAudioPlayer()
    func playAudio() {
        let path = Bundle.main.path(forResource: "SubmarineDiveAlarm", ofType: "mp3")
        
        try! player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: path!) as URL)
        
        player.prepareToPlay()
        player.play()
    }
    
    @IBAction func stopTapped(_ sender: Any) {
        timer?.invalidate()
        player.stop()
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        timer?.invalidate()
        t = 10
        mySlider.value = 10
        player.stop()
    }
}

