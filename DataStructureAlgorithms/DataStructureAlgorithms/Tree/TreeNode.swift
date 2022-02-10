//
//  TreeNode.swift
//  DataStructureAlgorithms
//
//  Created by Oluwakamiye Akindele on 10/02/2022.
//

import Foundation

class TreeNode<T> {
    var value: T
    private (set) var children: [TreeNode] = []
    
    init(_ value: T) {
        self.value = value
    }
    
    func addChildNode(_ value: T) {
        let childTreeNode = TreeNode(value)
        children.append(childTreeNode)
    }
    
    func add(_ child: TreeNode) {
        children.append(child)
    }
}

extension TreeNode {
    /// Traverses the depth first
    public func forEachDepthFirstTraversal(visit: (TreeNode) -> Void) {
        visit(self)
        children.forEach {
            $0.forEachDepthFirstTraversal(visit: visit)
        }
    }
}
