//
//  QueueLinkedList.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 14/02/2022.
//

import Foundation

class QueueLinkedList<T>: Queue {
    private var list = DoublyLinkedList<T>()
    var isEmpty: Bool {
        list.isEmpty
    }
    
    var peek: T? {
        list.first?.value
    }
    
    public init() {}
    
    @discardableResult
    func enqueue(_ element: T) -> Bool {
        list.append(element)
        return true
    }
    
    func dequeue() -> T? {
        if !list.isEmpty,
           let element = list.first {
            return list.remove(element)
        }
        return nil
    }
}

extension QueueLinkedList: CustomStringConvertible {
    var description: String {
        String(describing: list)
    }
}
