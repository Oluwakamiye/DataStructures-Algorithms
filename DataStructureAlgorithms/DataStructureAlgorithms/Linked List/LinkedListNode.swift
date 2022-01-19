//
//  LinkedListNode.swift
//  DataStructureAlgorithms
//
//  Created by Kamiye on 05/01/2022.
//

import Foundation

class LinkedListNode<Value> {
    var value: Value
    var nextNode: LinkedListNode?
    
    init(value: Value, nextNode: LinkedListNode? = nil) {
        self.value = value
        self.nextNode = nextNode
    }
}

extension LinkedListNode: CustomStringConvertible {
    var description: String {
        guard let nextNode = nextNode else {
            return "\(value)"
        }
        return "\(value) -> \(String(describing: nextNode)) "
    }
}
