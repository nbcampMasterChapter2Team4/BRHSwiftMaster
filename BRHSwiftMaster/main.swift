//
//  main.swift
//  BRHSwiftMaster
//
//  Created by 백래훈 on 3/19/25.
//

import Foundation

let essentialQuestionOne = EssentialQuestionOne()

essentialQuestionOne.sum(3, 5)
print(essentialQuestionOne.sum(3, 5))
essentialQuestionOne.calculate(7, 8, closure: essentialQuestionOne.sum)
