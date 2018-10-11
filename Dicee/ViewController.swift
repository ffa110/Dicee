//
//  ViewController.swift
//  Dicee
//
//  Created by Fahad Abunayyan on 10/10/18.
//  Copyright © 2018 Fahad Abunayyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // create random integers
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    // create array and store images' names of dice
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
    }
    
    // function for changing dice images
    func updateDiceImages() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
    }
}

