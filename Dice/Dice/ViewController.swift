//
//  ViewController.swift
//  Dice
//
//  Created by code Batz on 2018-09-28.
//  Copyright © 2018 zumh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5" ,"dice6"]

    @IBOutlet weak var diceImageViewer1: UIImageView!
    
    @IBOutlet weak var diceImageViewer2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func rollButton(_ sender: UIButton) {
        updateDiceImages()
       
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        // generate random number
        generateRandomNumber()
        
        // allow the number to flip images
        showImages()
    }
    
    func generateRandomNumber(){
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
    }
    
    func showImages() {
        
        diceImageViewer1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageViewer2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
}

