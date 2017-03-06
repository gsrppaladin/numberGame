//
//  ViewController.swift
//  NumberGame
//
//  Created by Sam Greenhill on 3/5/17.
//  Copyright © 2017 simplyAmazingMachines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number1 = 0 // holds 1 random number
    var number2 = 0 // holds second number
    //which one is higher and which one is lower so we store it in another
    
    var lowerNumber = 0
    var higherNumber = 0
    //track the last guess the computer made.
    
    var lastGuessed = 0
    //will need number of guesses made and allowed
    
    @IBOutlet weak var messageLbl: UILabel!
    
    @IBOutlet weak var questionLbl: UILabel!
    
    
    @IBOutlet weak var remainingGuessesLbl: UILabel!
    
    
    @IBOutlet weak var btnLower: UIButton!
    @IBOutlet weak var btnYes: UIButton!
    @IBOutlet weak var btnHigher: UIButton!
    @IBOutlet weak var btnRestart: UIButton!
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func lowerPressed(_ sender: UIButton) {
        print("lower pressed")
    }

    
    @IBAction func yesPressed(_ sender: UIButton) {
        print("yes pressed")
    }

    
    @IBAction func higherPressed(_ sender: UIButton) {
        print("higher pressed")
    }
    
    
    @IBAction func restartPressed(_ sender: UIButton) {
        print("restart pressed")
    }
    
    
    
    
    
    

}

