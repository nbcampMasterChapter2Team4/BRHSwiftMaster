//
//  main.swift
//  BRHSwiftMaster
//
//  Created by 백래훈 on 3/19/25.
//

import Foundation

// 필수 문제 1
let essentialQuestionOne = EssentialQuestionOne()
essentialQuestionOne.sum(3, 5)
print(essentialQuestionOne.sum(3, 5))
essentialQuestionOne.calculate(7, 8, closure: essentialQuestionOne.sum)

// 필수 문제 2
let essentialQuestionTwo = EssentialQuestionTwo()
print(essentialQuestionTwo.numbers)
print(essentialQuestionTwo.result)
print(essentialQuestionTwo.result2)

let result = essentialQuestionTwo.myMap([1, 2, 3, 4, 5]) { num in
    String(num)
}

print(result)

