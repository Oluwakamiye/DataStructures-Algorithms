//
//  DoublyLinkedList.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 27/01/2022.
//

import Foundation

struct DoublyLinkedList<T> {
    var head: DoublyLinkedListNode<T>?
    var tail: DoublyLinkedListNode<T>?
    var isEmpty: Bool {
        return head == nil
    }
    
    mutating func push(_ element: T) {
        
    }
}
