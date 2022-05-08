//
//  PalindromInteger.swift
//  DSAQuestion
//
//  Created by CodeCat15 on 5/7/22.
//

import Foundation

class PalindromeInteger {

    func isPalindrom(number: Int) -> Bool {

        if(number > 0 && number < 10) {
            return true
        }

        var reverseNumber = 0
        var originalNumber = number

        while(originalNumber > 0) {
            // reverserNumber = reverseNumber * 10 + (number % 10)

            let lastDigit = originalNumber % 10
            reverseNumber = reverseNumber * 10 + lastDigit
            originalNumber = originalNumber / 10
        }

        return reverseNumber == number
    }
}
