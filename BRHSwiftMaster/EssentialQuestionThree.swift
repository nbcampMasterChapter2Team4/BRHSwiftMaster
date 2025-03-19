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
    
    func b(_ array: [String]) -> [String] {
        var result: [String] = []
        
        for i in 0..<array.count {
            if i % 2 == 0 {
                result.append(array[i])
            }
        }
        return result
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
    
    func d<T>(_ array: [T]) -> [T] where T: Numeric {
        var result: [T] = []
        
        for i in 0..<array.count {
            if i % 2 == 0 {
                result.append(array[i])
            }
        }
        return result
    }
}
