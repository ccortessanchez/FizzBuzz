//
//  Brain.swift
//  FizzBuzz
//
//  Created by Carlos Cortés Sánchez on 28/08/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleByThree (number: Int) -> Bool {
        if number % 3 == 0 {
            return true
        } else {
            return false
        }
    }
}
