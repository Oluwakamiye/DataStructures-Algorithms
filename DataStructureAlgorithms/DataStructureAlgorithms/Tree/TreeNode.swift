//
//  TreeNode.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 01/03/2022.
//

import Foundation

class TreeNode<T> {
    var value: T
    var children: [TreeNode] = []
    
    init(_ value: T) {
        self.value = value
    }
    
    func add(_ child: TreeNode) {
        children.append(child)
    }
}


// MARK: Traversal Algorithms
extension TreeNode {
    /// Traversese from left to  right.
    func forEachDepthTraversal(visit: (TreeNode) -> Void) {
        visit(self)
        children.forEach{
            $0.forEachDepthTraversal(visit: visit)
        }
    }
    
    /// Traverse each level
    func forEachLevelOrder(visit: (TreeNode) -> Void) {
        visit(self)
        var queue = QueueStack<TreeNode>()
        children.forEach {
            queue.enqueue($0)
        }
        while let node = queue.dequeue() {
            visit(node)
            node.children.forEach {
                queue.enqueue($0)
            }
        }
    }
}


// MARK: Search Algorithms
extension TreeNode where T: Equatable {
    func search(_ value: T) -> TreeNode? {
        var result: TreeNode?
        forEachLevelOrder { node in
            if node.value == value  {
                result = node
            }
        }
        return result
    }
}
