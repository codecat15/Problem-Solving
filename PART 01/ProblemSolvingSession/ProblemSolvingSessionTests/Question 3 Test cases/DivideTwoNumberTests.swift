//
//  DivideTwoNumberTests.swift
//  DSAQuestionTests
//
//  Created by CodeCat15 on 5/7/22.
//

import XCTest
@testable import ProblemSolvingSession

class DivideTwoNumberTests: XCTestCase {

    func test_DivideTwoInteger_WithValidValues_Returns_Result(){

        //ARRANGE
        let divideTwoNumber = DivideTwoNumber();
        let dividend = 10
        let divisor = 5

        //ACT
        let result = try! divideTwoNumber.divide(dividend: dividend, divisor: divisor)

        //ASSERT
        XCTAssertEqual(2, result)
    }

    func test_DivideTwoInteger_WithLowerDividend_Returns_Result(){

        //ARRANGE
        let divideTwoNumber = DivideTwoNumber();
        let dividend = 1
        let divisor = 5

        //ACT
        let result = try! divideTwoNumber.divide(dividend: dividend, divisor: divisor)

        //ASSERT
        XCTAssertEqual(0, result)
    }

    func test_DivideTwoInteger_WithZeroDividend_Returns_Result(){

        //ARRANGE
        let divideTwoNumber = DivideTwoNumber();
        let dividend = 0
        let divisor = 5

        //ACT
        let result = try! divideTwoNumber.divide(dividend: dividend, divisor: divisor)

        //ASSERT
        XCTAssertEqual(0, result)
    }

    func test_DivideTwoInteger_WithNegativeDividend_Returns_Result(){

        //ARRANGE
        let divideTwoNumber = DivideTwoNumber();
        let dividend = -10
        let divisor = 3

        //ACT
        let result = try! divideTwoNumber.divide(dividend: dividend, divisor: divisor)

        //ASSERT
        XCTAssertEqual(-3, result)
    }

    func test_DivideTwoInteger_WithNegativeDivisor_Returns_Result(){

        //ARRANGE
        let divideTwoNumber = DivideTwoNumber();
        let dividend = 10
        let divisor = -5

        //ACT
        let result = try! divideTwoNumber.divide(dividend: dividend, divisor: divisor)

        //ASSERT
        XCTAssertEqual(-2, result)
    }

    func test_DivideTwoInteger_WithNegativeValues_Returns_Result(){

        //ARRANGE
        let divideTwoNumber = DivideTwoNumber();
        let dividend = -10
        let divisor = -5

        //ACT
        let result = try! divideTwoNumber.divide(dividend: dividend, divisor: divisor)

        //ASSERT
        XCTAssertEqual(2, result)
    }

    func test_DivideTwoInteger_WithZeroDivisor_Throws(){

        //ARRANGE
        let divideTwoNumber = DivideTwoNumber();
        let dividend = 10
        let divisor = 0

        //ASSERT
        XCTAssertThrowsError(try divideTwoNumber.divide(dividend: dividend, divisor: divisor))
    }

    func test_DivideTwoInteger_WithSameDividentAndDivisor_Returns_Result(){

        //ARRANGE
        let divideTwoNumber = DivideTwoNumber();
        let dividend = 8
        let divisor = 8

        //ACT
        let result = try! divideTwoNumber.divide(dividend: dividend, divisor: divisor)

        //ASSERT
        XCTAssertEqual(1, result)
    }
}
