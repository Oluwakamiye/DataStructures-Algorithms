//
//  DoublyLinkedListNode.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 27/01/2022.
//

import Foundation

public class DoublyLinkedListNode<T> {
    
    public var value: T
    public var next: DoublyLinkedListNode<T>?
    public var previous: DoublyLinkedListNode<T>?
    
    public init(value: T) {
        self.value = value
    }
}

extension DoublyLinkedListNode: CustomStringConvertible {
    public var description: String {
        String(describing: value)
    }
}
