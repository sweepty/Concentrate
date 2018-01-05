//
//  Card.swift
//  Concentration
//
//  Created by Seungyeon Lee on 2018. 1. 1..
//  Copyright © 2018년 Seungyeon Lee. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int{
        identifierFactory += 1
        return identifierFactory
        
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
