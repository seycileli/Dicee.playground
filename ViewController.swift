//
//  ViewController.swift
//  Dicee
//
//  Created by User on 1/14/19.
//  Copyright © 2019 Sey Cileli. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6",]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateDiceImages()
        
    }
    
    @IBAction func rollDiceButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
        
    }
    
    func updateDiceImages() {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage (named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage (named: diceArray[randomDiceIndex2])
        
    }
    
    
}

