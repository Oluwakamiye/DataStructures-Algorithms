//
//  LinkedList.swift
//  DataStructureAlgorithms
//
//  Created by Kamiye on 05/01/2022.
//

import Foundation

struct LinkedList<Value> {
    var head: LinkedListNode<Value>?
    var tail: LinkedListNode<Value>?
    var isEmpty: Bool {
        head == nil
    }
    
    init() {}
    
    /// Copy on Write. This ensures we maintain the struct property and a LinkedList object is treated as a value rather than a reference
    private mutating func copyNodes() {
        guard !isKnownUniquelyReferenced(&head) else {
            return
        }
        guard var oldNode = head else {
            return
        }
        head = LinkedListNode(value: oldNode.value)
        var newNode = head
        
        while let nextOldNode = oldNode.nextNode {
            newNode!.nextNode = LinkedListNode(value: nextOldNode.value)
            newNode = newNode!.nextNode
            oldNode = nextOldNode
        }
        tail = newNode
    }
}


// MARK: Addition Operations
extension LinkedList {
    /// Adds a new value at the front of the Linked List and becomes the head
    mutating func push(_ value: Value) {
        copyNodes()
        head = LinkedListNode(value: value, nextNode: head)
        if tail == nil {
            tail = head
        }
    }
    
    /// Adds a new value at the end of the Linked List and becomes the tail
    mutating func append(_ value: Value) {
        copyNodes()
        if isEmpty {
            push(value)
        } else {
            tail!.nextNode = LinkedListNode(value: value)
            tail = tail!.nextNode
        }
    }
    
    /// Traverses through the Linked List and returns the node at a particular index else, it returns null
    mutating func node(at index: Int) -> LinkedListNode<Value>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.nextNode
            currentIndex += 1
        }
        return currentNode
    }
    
    /// Inserts a new node after the specified node in the Linked List
    @discardableResult
    mutating func insert(_ value: Value, after node: LinkedListNode<Value>) -> LinkedListNode<Value> {
        copyNodes()
        guard tail !== node else {
            append(value)
            return tail!
        }
        node.nextNode = LinkedListNode(value: value, nextNode: node.nextNode)
        return node.nextNode!
    }
}


// MARK: Removal Operations
extension LinkedList {
    /// Removes the head node in the Linked List and returns the Value
    @discardableResult
    mutating func pop() -> Value? {
        copyNodes()
        defer {
            head = head?.nextNode
            if isEmpty {
                tail = nil
            }
        }
        return head?.value
    }
    
    /// Removes  the  tail of the LinkedList and returns the value
    @discardableResult
    mutating func removeLast() -> Value? {
        copyNodes()
        guard let head = head else {
            return nil
        }
        guard head.nextNode != nil else {
            return pop()
        }
        
        var prev = head
        var current = head
        
        while let next = current.nextNode {
            prev = current
            current = next
        }
        defer {
            prev.nextNode = nil
            tail = prev
        }
        return tail!.value
    }
    
    /// Removes the node after the specified node and returns the removed node's value
    @discardableResult
    mutating func remove(after node: LinkedListNode<Value>) -> Value? {
        copyNodes()
        guard node.nextNode != nil else {
            return nil
        }
        defer {
            if node.nextNode === tail {
                tail = node
            }
            node.nextNode = node.nextNode?.nextNode
        }
        return node.nextNode!.value
    }
}


// MARK: Custom String Implementation
extension LinkedList: CustomStringConvertible {
    var description: String {
        guard let head = head else {
            return "Empty LinkedList"
        }
        return String(describing: head)
    }
}


extension LinkedList: Collection {
    public struct Index: Comparable {
        public var node: LinkedListNode<Value>?
        
        static public func ==(lhs: Index, rhs: Index) -> Bool {
            switch (lhs.node, rhs.node) {
            case let (left?, right?):
                return left.nextNode === right.nextNode
            case (nil, nil):
                return true
            default:
                return false
            }
        }
        
        public static func < (lhs: LinkedList<Value>.Index, rhs: LinkedList<Value>.Index) -> Bool {
            guard lhs != rhs else {
                return false
            }
            let nodes = sequence(first: lhs.node, next: {($0?.nextNode)})
            return nodes.contains(where: {$0 === rhs.node})
        }
    }
    
    var startIndex: Index {
        Index(node: head)
    }
    
    var endIndex: Index {
        Index(node: tail?.nextNode)
    }
    
    public func index(after i: Index) -> Index {
        Index(node: i.node?.nextNode)
    }
    
    public subscript(position: Index) -> Value {
        position.node!.value
    }
}
