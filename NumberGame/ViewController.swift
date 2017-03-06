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
    
    
    var noOfGuessesMade = 0
    var totalGuesses = 10
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startGame()
    }


    @IBAction func lowerPressed(_ sender: UIButton) {
       
        if noOfGuessesMade >= totalGuesses {
            gameLost()
            return
        }
        higherNumber = lastGuessed
        lastGuessed = guessNumber(lowerNum: lowerNumber, higherNum: higherNumber)
        askQuestion()
        
        
    }

    
    @IBAction func yesPressed(_ sender: UIButton) {
        questionLbl.text = "I Won!!!!"
        showHideBtns(hidden: true)
    }

    
    @IBAction func higherPressed(_ sender: UIButton) {
        
        if noOfGuessesMade >= totalGuesses {
            gameLost()
            return
        }
        lowerNumber = lastGuessed
        lastGuessed = guessNumber(lowerNum: lowerNumber, higherNum: higherNumber)
        askQuestion()
    }
    
    
    @IBAction func restartPressed(_ sender: UIButton) {
        startGame()
        showHideBtns(hidden: false)
    }

    func startGame() {
        //when you restart game
        noOfGuessesMade = 0
        number1 = Int(arc4random_uniform(1000))
        number2 = Int(arc4random_uniform(1000))
        
        //lower number is = if number1 is less then number2, and if it is that case store number1 into lower number, right hand is stored into the lefthand side. if number1 is less then number2 then give me number1 and store it in lowerNumber, otherwise give me number2
        lowerNumber = number1 < number2 ? number1 : number2
        
        higherNumber = number1 > number2 ? number1 : number2
        
        lastGuessed = guessNumber(lowerNum: lowerNumber, higherNum: higherNumber)
        
        messageLbl.text = "Think of a number between \(lowerNumber) and \(higherNumber)"
        
        askQuestion()
    }
    
    func guessNumber(lowerNum: Int, higherNum: Int) -> Int {
    
        noOfGuessesMade+=1
        remainingGuessesLbl.text = "\(totalGuesses - noOfGuessesMade)"
        
        return (higherNum - lowerNum) / 2 + lowerNum
        //example of how this works. 
        //if lowerNumber = 200 and higherNumber = 500, do (500 - 200) / 2 = 150 + 200 = 350
        
        
    }
    
    func askQuestion() {
        questionLbl.text = "Is your number \(lastGuessed)"
    }
    
    
    func showHideBtns(hidden: Bool) {
        btnYes.isHidden = hidden
        btnLower.isHidden = hidden
        btnHigher.isHidden = hidden
        
    }
    func gameLost() {
        questionLbl.text = "You Win"
        showHideBtns(hidden: true)
    }

    
    
}

