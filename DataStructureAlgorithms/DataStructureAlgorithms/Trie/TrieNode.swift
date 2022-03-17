//
//  TrieNode.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 15/03/2022.
//

import Foundation

public class TrieNode<Key: Hashable> {
    public var key: Key?
    public weak var parent: TrieNode?
    public var children: [Key: TrieNode] = [:]
    public var isTerminating: Bool = false
    
    public init(key: Key?, parent: TrieNode?) {
        self.key = key
        self.parent = parent
    }
    
    public func levelTraverse(visit: (TrieNode) -> Void) {
        visit(self)
        var trieQueue = QueueStack<TrieNode>()
        children.forEach {
            trieQueue.enqueue($0.value)
        }
//        var level = 0
//        print("End of Level \(level)")
        while let node = trieQueue.dequeue() {
            visit(node)
            node.children.forEach {
                trieQueue.enqueue($0.value)
            }
        }
    }
}
