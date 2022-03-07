//
//  BinaryTreeNode.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 02/03/2022.
//

import Foundation

class BinaryTreeNode<T> {
    var value: T
    var leftChild: BinaryTreeNode?
    var rightChild: BinaryTreeNode?
    
    init(value: T) {
        self.value = value
    }
}

// MARK: Traversal Algorithms
extension BinaryTreeNode {
    /// Recursively visits  the left child, then the node, then the right child
    func inOrderTraversal(_ visit: (T) -> Void) {
        leftChild?.inOrderTraversal(visit)
        visit(value)
        rightChild?.inOrderTraversal(visit)
    }
    
    /// Visits the node, then the left child, then the right child
    func preOrderTraversal(_ visit: (T) -> Void) {
        visit(value)
        leftChild?.preOrderTraversal(visit)
        rightChild?.preOrderTraversal(visit)
    }
    
    /// Recursively visits the left child, the right child, then the node
    func postOrderTraversal(_ visit: (T) -> Void) {
        leftChild?.postOrderTraversal(visit)
        rightChild?.postOrderTraversal(visit)
        visit(value)
    }
}

extension BinaryTreeNode: CustomStringConvertible {
    public var description: String {
        diagram(for: self)
    }
    
    private func diagram(for node: BinaryTreeNode?, _ top: String = "", _ root: String = "", _ bottom: String = "") -> String {
        guard let node = node else {
            return root + "nil\n"
        }
        if node.leftChild == nil && node.rightChild == nil {
            return root + "\(node.value)\n"
        }
        return diagram(for: node.rightChild, top + " ", top + "┌──", top + "│ ") + root + "\(node.value)\n" + diagram(for: node.leftChild, bottom + "│ ", bottom + "└──", bottom + " ")
    }
}
