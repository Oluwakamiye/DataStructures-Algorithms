//
//  QueueArray.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 27/01/2022.
//

import Foundation

struct QueueArray<T>: Queue {
    private var array = [T]()
    
    var isEmpty: Bool {
        array.isEmpty
    }
    
    var peek: T? {
        array.first
    }
    
    @discardableResult
    mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        return true
    }
    
    // This always takes a 0(n) order
    mutating func dequeue() -> T? {
        array.isEmpty ? nil : array.removeFirst()
    }
}

extension QueueArray:  CustomStringConvertible {
    var description: String {
        String(describing: array)
    }
}
