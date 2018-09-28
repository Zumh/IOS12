//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer : AVAudioPlayer!
    let sounds = ["note1","note2","note3","note4","note5","note6","note7"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        soundPlay(notes: sender.tag - 1)
        
    }
    
    func soundPlay(notes: Int){
        /*
         Here we learn about to set URL for the sound
         */
        
        let soundURL = Bundle.main.url(forResource: sounds[notes], withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        } catch {
            print(error)
        }
        
        audioPlayer.play()
    }
    
  

}

