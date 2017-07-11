//
//  ViewController.swift
//  playAudio
//
//  Created by π on 10/07/2017.
//  Copyright © 2017 π. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    var audioPlayer = AVAudioPlayer()
    
    func playAudio() {
        let path = Bundle.main.path(forResource: "SubmarineDiveAlarm", ofType: "mp3")
        
        try! audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: path!) as URL)

        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playAudio()
    }
}
