//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Gunter on 20/11/2018.
//  Copyright © 2018 Ray Wenderlich. All rights reserved.
//

import XCTest
@testable import BullsEye

class BullsEyeTests: XCTestCase {
    
    var gameUnderTest: BullsEyeGame!

    override func setUp() {
        gameUnderTest = BullsEyeGame()
        gameUnderTest.startNewGame()
    }

    override func tearDown() {
        gameUnderTest = nil
    }

    // Test 메서드의 이름은 항상 test로 시작
    // given, when, then 섹션으로 테스트 형식을 지정하는것이 좋음
    func testScoreIsComputed() {
        /*
         1. given 섹션에서, 필여한 모든 값을 설정한다.
         이 예제에서, guess 값을 작성하여 targetValue와 얼마나 다른지 지정 할 수 있음.
        */
        let guess = gameUnderTest.targetValue + 5
        
        /*
         2. when 섹션에서, 테스트 중인 코드를 실행한다. gameUnderTest.check(_:) 호출한다.
        */
        _ = gameUnderTest.check(guess: guess)
        
        /*
         3. then 섹션에서, 예상한 결과를 확인하며 (이 경우에, gameUnderText.socreRound 가 100 - 5 이다.)
         테스트가 실패 할떄의 메세지를 출력한다.
        */
        XCTAssertEqual(
            gameUnderTest.scoreRound,
            95,
            "Score computed from guess is wrong"
        )
        
    }
    
    func testScoreIsComputedWhenGuessLTTarget() {
        // 1. given
        let guess = gameUnderTest.targetValue - 5
        // 2. when
        _ = gameUnderTest.check(guess: guess)
        // 3. then
        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
        
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
