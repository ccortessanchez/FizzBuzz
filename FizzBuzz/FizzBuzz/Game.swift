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
    
    init() {
        score = 0
    }
    
    func play(move: String) -> Bool{
        score = score + 1
        return true
    }
}
