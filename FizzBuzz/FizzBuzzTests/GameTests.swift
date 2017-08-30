//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Carlos Cortés Sánchez on 28/08/2017.
//  Copyright © 2017 Carlos Cortés Sánchez. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    var game: Game!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        game = Game()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        game = nil
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        let _ = game.play(move: Move.number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        let _ = game.play(move: Move.number)
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play(move: Move.fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrong() {
        game.score = 1
        let response = game.play(move: Move.fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzIsRight() {
        game.score = 4
        let response = game.play(move: Move.buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzIsWrong() {
        game.score = 1
        let response = game.play(move: Move.buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzIsRight() {
        game.score = 14
        let response = game.play(move: Move.fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzIsWrong() {
        game.score = 1
        let response = game.play(move: Move.fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberIsRight() {
        game.score = 1
        let response = game.play(move: Move.number)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberIsWrong() {
        game.score = 2
        let response = game.play(move: Move.number)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        let _ = game.play(move: Move.fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: Move.number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: Move.number)
        XCTAssertNotNil(response.score)
        
    }
}
