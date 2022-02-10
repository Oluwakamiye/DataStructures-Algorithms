//
//  DoublyLinkedListNode.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 27/01/2022.
//

import Foundation

class DoublyLinkedListNode<T> {
    var previousNode: DoublyLinkedListNode?
    var value: T
    var nextNode: DoublyLinkedListNode?
    
    init(value: T, previousNode: DoublyLinkedListNode?, nextNode: DoublyLinkedListNode?) {
        self.value = value
        self.previousNode = previousNode
        self.nextNode = nextNode
    }
}

extension DoublyLinkedListNode: CustomStringConvertible {
    var description: String {
        guard let nextNode = nextNode else {
            return String(describing: value)
        }
        return "\(value) -> \(String(describing: nextNode))"
    }
}
