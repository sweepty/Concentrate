//
//  Concentration.swift
//  Concentration
//
//  Created by Seungyeon Lee on 2018. 1. 1..
//  Copyright © 2018년 Seungyeon Lee. All rights reserved.
//

import Foundation

class Concentration {
    var cards = [Card]()
    var indexOfOneAndOnlyFaceUpCard : Int?
    func chooseCard(at index: Int) {
        
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                //check if cards Matched
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                //matched든 아니든 nil임.
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil
                
            } else {
                //either no cards or 2 cards are face up
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
    }
    
    
    init(numberOfPairsCards: Int) {
        for _ in 0...numberOfPairsCards {
            let card = Card()
            cards += [card, card]
        }
        //TODO: Shffle the cards -> homework!!
        for i in 0...(numberOfPairsCards*2)-1 {
            let j = Int(arc4random_uniform(UInt32(numberOfPairsCards)))
            cards.swapAt(i, j)
        }
        

    }
}
