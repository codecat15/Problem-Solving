//
//  DivideTwoNumber.swift
//  DSAQuestion
//
//  Created by CodeCat15 on 5/7/22.
//

import Foundation

enum MathError : Error {
    case divideByZero
}

class DivideTwoNumber {

    func divide(dividend: Int, divisor: Int) throws -> Int  {

        if(dividend == 0){
            return 0
        }

        if(divisor == 0){
            throw MathError.divideByZero
        }

        let isNegative = (dividend < 0) || (divisor < 0)
        var quotient = 0
        var tempDivident = convertToPositiveInteger(value: dividend)
        let tempDivisor = convertToPositiveInteger(value: divisor)

        while tempDivident >= tempDivisor {
            tempDivident = tempDivident - tempDivisor
            quotient = quotient + 1
        }

        if(isDividentAndDivisorBothNegative(dividend: dividend, divisor: divisor)){
            return quotient
        }

        return isNegative ? -quotient : quotient
    }

    private func convertToPositiveInteger(value: Int) -> Int {
        return value < 0 ? value * -1 : value
    }

    private func isDividentAndDivisorBothNegative(dividend: Int, divisor: Int) -> Bool{
        return (dividend < 0) && (divisor < 0)
    }
}
