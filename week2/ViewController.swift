//
//  ViewController.swift
//
//  Created by Steven Blair on 11/14/18.
//  Copyright © 2018 Steven Blair. All rights reserved.
//

import UIKit

// To Do: Implement a "property observer" on flipCount
//       so that the flipCountLabel is updated whenvever
//       flipCount changes.
// Furthermore, does every button really need its own event handler?
// See if you can come up with a way to recycle more code.
// Finally, fix the game so that the cards of the game begin face down.
class ViewController: UIViewController {
    
    // This is an instance variable.
    // In Swift, ALL instance variables must be initialized.
    // There are two ways to initialize variables.
    // 1. When you declare the variable,
    // 2. Using an initalizer method
    var flipCount = 0

    // Why isn't Swift upset that this variable isn't initialized?
    // Hint: It has to do with the '!' operand
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        flipCountLabel.text = "Flips: \(flipCount)"
        flipCard(withEmoji: "🍩", on: sender)
    }
    

    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCount += 1
        flipCountLabel.text = "Flips: \(flipCount)"
        flipCard(withEmoji: "🍔", on: sender)
        
    }
    
    @IBAction func touchThirdCard(_ sender: UIButton) {
        flipCount += 1
        flipCountLabel.text = "Flips: \(flipCount)"
        flipCard(withEmoji: "🍗", on: sender)
    }
    
    
    @IBAction func touchFourthCard(_ sender: UIButton) {
        flipCount += 1
        flipCountLabel.text = "Flips: \(flipCount)"
        flipCard(withEmoji:"🍕", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6261432005, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6261432005, blue: 0, alpha: 1)
            
        }
    }
    

}

