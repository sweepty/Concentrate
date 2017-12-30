//
//  ViewController.swift
//  Concentrate
//
//  Created by Seungyeon Lee on 2017. 12. 30..
//  Copyright © 2017년 Seungyeon Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipsCount = 0 {
        didSet {
            flipsCounterLabel.text = "Flips: \(flipsCount)"
        }
    }
    
    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var flipsCounterLabel: UILabel!
    var emojiChoices = ["👻","🎃","👻","🎃"]
    @IBAction func touchCard(_ sender: UIButton) {
        flipsCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("choosen card was not in cardButtons")
            
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        print("flipCard(withEmoji: \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}

