//
//  Brain.swift
//  FizzBuzz
//
//  Created by Carlos Cortés Sánchez on 28/08/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        if number % divisor == 0 {
            return true
        } else {
            return false
        }
    }
    
    func check(number: Int) -> String {
        if isDivisibleBy(divisor: 15, number: number) {
            return "FizzBuzz"
        } else if isDivisibleBy(divisor: 3, number: number) {
            return "Fizz"
        } else {
            return "Buzz"
        }
    }
}
