//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Carlos Cortés Sánchez on 28/08/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberButton: UIButton!

    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }
    var game: Game?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = checkedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender == numberButton {
            play(move: Move.number)
        } else {
            play(move: Move.fizz)
        }
    }
    
}

