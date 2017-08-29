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
    
    func play(move: String) -> (right: Bool, score: Int){
        let result = brain.check(number: score + 1)
        
        /**
        if result == move {
            score = score + 1
            return (true, score)
        } else {
        **/
            return (false, score)
        //}
    }
}
