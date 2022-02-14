//
//  QueueLinkedList.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 14/02/2022.
//

import Foundation

class QueueLinkedList<T>: Queue {
    private var list: DoublyLinkedList<T>
    public init() {}
    
    func enqueue(_ element: T) -> Bool {
        list.append(element)
        return true
    }
}
