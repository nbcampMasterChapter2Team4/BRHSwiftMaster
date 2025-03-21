//
//  EssentialQuestionThree.swift
//  BRHSwiftMaster
//
//  Created by 백래훈 on 3/19/25.
//

import Foundation

final class EssentialQuestionThree {
    func a(_ array: [Int]) -> [Int] {
        var result: [Int] = []
        
        for i in 0..<array.count {
            if i % 2 == 0 {
                result.append(array[i])
            }
        }
        return result
    }
    
    // 해설 자료 참고
    func aa(_ array: [Int]) -> [Int] {
        array.enumerated()
            .filter { index, _ in
                index.isMultiple(of: 2)
            }
            .map { _, value in
                value
            }
    }
    
    func b(_ array: [String]) -> [String] {
        var result: [String] = []
        
        for i in 0..<array.count {
            if i % 2 == 0 {
                result.append(array[i])
            }
        }
        return result
    }
    
    // 해설 자료 참고
    func bb(_ array: [String]) -> [String] {
        array.enumerated()
            .filter { index, _ in
                index.isMultiple(of: 2)
            }
            .map { _, value in
                value
            }
    }
    
    func c<T>(_ array: [T]) -> [T] {
        var result: [T] = []
        
        for i in 0..<array.count {
            if i % 2 == 0 {
                result.append(array[i])
            }
        }
        return result
    }
    
    // 해설 자료 참고
    func cc<T>(_ array: [T]) -> [T] {
        array.enumerated()
            .filter { index, _ in
                index.isMultiple(of: 2)
            }
            .map { _, value in
                value
            }
    }
    
    func d<T>(_ array: [T]) -> [T] where T: Numeric {
        var result: [T] = []
        
        for i in 0..<array.count {
            if i % 2 == 0 {
                result.append(array[i])
            }
        }
        return result
    }
    
    // 해설 자료 참고
    func dd<T: Numeric>(_ array: [T]) -> [T] {
        array.enumerated()
            .filter { index, _ in
                index.isMultiple(of: 2)
            }
            .map { _, value in
                value
            }
    }
}
