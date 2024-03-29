//
//  StackStucture.swift
//  Stack
//
//  Created by Josh Reichman on 2/23/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//

import Foundation

struct Stack<T> {
    
    var array: [T] = []
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        if !array.isEmpty {
            let index = array.count - 1
            let poppedValue = array.remove(at: index)
            return poppedValue
        } else {
            return nil
        }
    }
    
    func peek() -> T? {
        if !array.isEmpty {
            return array.last
        } else {
            return nil
        }
    }
    
    var count: Int {
        return array.count
    }
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
}
