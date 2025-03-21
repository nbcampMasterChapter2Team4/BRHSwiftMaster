//
//  EssentialQuestionTwo.swift
//  BRHSwiftMaster
//
//  Created by 백래훈 on 3/19/25.
//

import Foundation

final class EssentialQuestionTwo {
    let numbers = [1, 2, 3, 4, 5]
    
    // 빈 배열의 String 배열에서 map을 사용하여 값 할당
    // lazy 키워드를 사용하여 사용 시 메모리에 할당
    lazy var result: [String] = numbers.map { String($0) }
    // 해설 자료 참고
    lazy var stringResult: [String] = numbers.map(String.init)
    
    lazy var result2: [String] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].filter { $0 % 2 == 0 }.map { String($0) }
    // 해설 자료 참고
    lazy var stringResult2: [String] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        .filter { $0.isMultiple(of: 2) }
        .map(String.init)
    
    let converting: (Int) -> String = { num in
        return String(num)
    }
    
    func myMap(_ array: [Int], closure: (Int) -> String) -> [String] {
        var result: [String] = []
        
        for num in array {
            result.append(closure(num))
        }
        
        return result
    }
    
    // 해설 자료 참고
    func myMap2(_ array: [Int], closure: (Int) -> String) -> [String] {
        array.map(closure)
    }
    
}
