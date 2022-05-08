//
//  LengthOfLastWordTests.swift
//  DSAQuestionTests
//
//  Created by CodeCat15 on 5/7/22.
//

import XCTest
@testable import ProblemSolvingSession

class LengthOfLastWordTests: XCTestCase {

    func test_LengthOfLastWord_WithEmptyString_Return_Result() {

        //ARRANGE
        let lengthOfLastWord = LengthOfLastWord();
        let word = ""

        //ACT
        let result =  lengthOfLastWord.findLengthOfLastWord(word: word)

        //ASSERT
        XCTAssertEqual(0, result)
    }

    func test_LengthOfLastWord_WithValidString_Return_Result() {

        //ARRANGE
        let lengthOfLastWord = LengthOfLastWord();
        let word = "I am Batman"

        //ACT
        let result =  lengthOfLastWord.findLengthOfLastWord(word: word)

        //ASSERT
        XCTAssertEqual(6, result)
    }

    func test_LengthOfLastWord_WithSpaceInString_Return_Result() {

        //ARRANGE
        let lengthOfLastWord = LengthOfLastWord();
        let word = "I    am    Batman   "

        //ACT
        let result =  lengthOfLastWord.findLengthOfLastWord(word: word)

        //ASSERT
        XCTAssertEqual(6, result)
    }

}
