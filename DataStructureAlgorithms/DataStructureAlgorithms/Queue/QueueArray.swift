//
//  QueueArray.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 27/01/2022.
//

import Foundation

struct QueueArray<T>: Queue {
    typealias Element = T
    private var array = [T]()
    
    var isEmpty: Bool {
        get {
            return !(array.count > 0)
        }
    }
    
    var peek: T? {
        array.first
    }
    
    mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        return true
    }
    
    mutating func dequeue() -> T? {
        if array.count > 0 {
            defer{
                array.removeFirst()
            }
            return array.first
        }
        return nil
    }
}

extension QueueArray: CustomStringConvertible {
    var description: String {
        String(describing: array)
    }
}
