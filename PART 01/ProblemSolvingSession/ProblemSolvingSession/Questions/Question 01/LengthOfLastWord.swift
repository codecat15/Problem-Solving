//
//  LengthOfLastWord.swift
//  DSAQuestion
//
//  Created by CodeCat15 on 5/7/22.
//

import Foundation

class LengthOfLastWord {

    func findLengthOfLastWord(word: String) -> Int {
        if(word.isEmpty){
            return 0
        }

        return word.split(separator: " ").last?.count ?? 0
    }
}
