//
//  QueueStructure.swift
//  Queue
//
//  Created by Josh Reichman on 2/23/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//

import Foundation

public struct Queue<T> {
    var list = [T]()
    
    mutating func enqueue(_ element: T) {
        list.append(element)
    }
    
    mutating func dequeue() -> T? {
        if !list.isEmpty {
            return list.removeFirst()
        } else {
            return nil
        }
    }
    
    func peek() -> T? {
        if !list.isEmpty {
            return list[0]
        } else {
            return nil
        }
    }
    
    mutating func clear(){
        list.removeAll()
    }
    
    var count: Int {
        return list.count
    }
    
    func isEmpty() -> Bool {
        return list.isEmpty
    }
}
