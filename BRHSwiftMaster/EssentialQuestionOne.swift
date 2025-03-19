//
//  EssentialQuestion.swift
//  BRHSwiftMaster
//
//  Created by 백래훈 on 3/19/25.
//

import Foundation

final class EssentialQuestionOne {
    let sum: (Int, Int) -> String = { first, second in
        return "두 수의 합은 \(first + second)입니다."
    }

    func calculate(_ a: Int, _ b: Int, closure: (Int, Int) -> String) {
        print(closure(a, b))
    }
}
