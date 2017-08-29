//
//  Game.swift
//  FizzBuzz
//
//  Created by Carlos Cortés Sánchez on 28/08/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import Foundation

class Game {
    
    var score: Int
    let brain: Brain
    
    init() {
        score = 0
        brain = Brain()
    }
    
    func play(move: String) -> Bool{
        score = score + 1
        
        let result = brain.check(number: score)
        
        if result == move {
            return true
        } else {
            return false
        }
    }
}
