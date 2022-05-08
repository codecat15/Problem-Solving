//
//  PalindromeIntegerTests.swift
//  DSAQuestionTests
//
//  Created by CodeCat15 on 5/7/22.
//

import XCTest
@testable import ProblemSolvingSession

class PalindromeIntegerTests: XCTestCase {

    func test_PalindromeInteger_WithValidNumber_Return_Result() {

        //ARRANGE
        let palindromeInteger = PalindromeInteger();
        let number = 2002

        //ACT
        let result =  palindromeInteger.isPalindrom(number: number)

        //ASSERT
        XCTAssertTrue(result)
    }

    func test_PalindromeInteger_WithSingleDigit_Return_Result() {

        //ARRANGE
        let palindromeInteger = PalindromeInteger();
        let number = 2

        //ACT
        let result =  palindromeInteger.isPalindrom(number: number)

        //ASSERT
        XCTAssertTrue(result)
    }

    func test_PalindromeInteger_WithNegativeDigit_Return_Result() {

        //ARRANGE
        let palindromeInteger = PalindromeInteger();
        let number = -2

        //ACT
        let result =  palindromeInteger.isPalindrom(number: number)

        //ASSERT
        XCTAssertFalse(result)
    }

    func test_PalindromeInteger_WithNonPalindromeInteger_Return_Result() {

        //ARRANGE
        let palindromeInteger = PalindromeInteger();
        let number = 576

        //ACT
        let result =  palindromeInteger.isPalindrom(number: number)

        //ASSERT
        XCTAssertFalse(result)
    }
}
