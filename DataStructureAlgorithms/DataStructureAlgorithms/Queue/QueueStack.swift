//
//  QueueStack.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 17/02/2022.
//

import Foundation

struct QueueStack<T>: Queue {
    private var leftStack: Array<T> = []
    private var rightStack: Array<T> = []
    
    var isEmpty: Bool {
        leftStack.isEmpty && rightStack.isEmpty
    }
    
    var peek: T? {
        leftStack.isEmpty ? rightStack.first: leftStack.last
    }
    
    public init() {}
    
    mutating func enqueue(_ element: T) -> Bool {
        rightStack.append(element)
        return true
    }
    
    mutating func dequeue() -> T? {
        if leftStack.isEmpty {
            leftStack = rightStack.reversed()
            rightStack.removeAll()
        }
        return leftStack.popLast()
    }
}
